// Copyright 2011,2012 by Wu Hon Sum
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.
//
// newsgroup:news://my.newsgroup.com.hk/welcome.sum
// forum http://home.i-cable.com/wu/
// movedlist may be wrong need remove later

unit Unit1;

interface

uses
  SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Menus, ComCtrls, ClipBrd, System.SyncObjs,
  System.Threading;

const
  inf = 10000;

type
  Tboard = array [0 .. 9, 0 .. 9] of integer;
  Tmovelist = array [1 .. 20] of integer;

type

  { TForm1 }

  TForm1 = class(TForm)
    apple: TImage;
    Chess2: TImage;
    Chess1: TImage;
    HumanFirstButton: TMenuItem;
    HumanVsHumanButton: TMenuItem;
    AboutButton: TMenuItem;
    RuleButton: TMenuItem;
    RedChess: TImage;
    BlackChess: TImage;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Image13: TImage;
    Image14: TImage;
    Image15: TImage;
    Image16: TImage;
    Image17: TImage;
    Image18: TImage;
    Image19: TImage;
    Image20: TImage;
    Image21: TImage;
    Image22: TImage;
    Image23: TImage;
    Image24: TImage;
    Image25: TImage;
    Image26: TImage;
    Image27: TImage;
    Image28: TImage;
    Image29: TImage;
    Image30: TImage;
    Image31: TImage;
    Image32: TImage;
    Image33: TImage;
    Image34: TImage;
    Image35: TImage;
    Image36: TImage;
    Image37: TImage;
    Image38: TImage;
    Image39: TImage;
    Image40: TImage;
    Image41: TImage;
    Image42: TImage;
    Image43: TImage;
    Image44: TImage;
    Image45: TImage;
    Image46: TImage;
    Image47: TImage;
    Image48: TImage;
    Image49: TImage;
    Image50: TImage;
    Image51: TImage;
    Image52: TImage;
    Image53: TImage;
    Image54: TImage;
    Image55: TImage;
    Image56: TImage;
    Image57: TImage;
    Image58: TImage;
    Image59: TImage;
    Image60: TImage;
    Image61: TImage;
    Image62: TImage;
    Image63: TImage;
    Image64: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    MainMenu1: TMainMenu;
    SaveButton: TMenuItem;
    Closebutton: TMenuItem;
    Restartbutton: TMenuItem;
    LoadButton: TMenuItem;
    Mode1: TMenuItem;
    HumanVsComputer: TMenuItem;
    ComputerVsHuman: TMenuItem;
    HumanvsHuman: TMenuItem;
    BackButton: TMenuItem;
    StepListBox: TListBox;
    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;
    BoardSetting: TMenuItem;
    ClearButton: TButton;
    MoveFirstRadioGroup: TRadioGroup;
    CopyToClipboardButton: TButton;
    ChessRadioGroup: TRadioGroup;
    SetupBoard: TMenuItem;
    CancelSetupBoard: TMenuItem;
    FinishSetupboard: TMenuItem;
    AiListBox: TListBox;
    NornalDepth: TEdit;
    Label5: TLabel;
    EndgameDepth: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    ScoreLabel: TLabel;
    AIDisplayScoreLabel: TLabel;
    Redlabel: TLabel;
    BlackLabel: TLabel;
    ProgressBar1: TProgressBar;
    Startposition2Button: TMenuItem;
    Startposition3Button: TMenuItem;
    Startposition4Button: TMenuItem;
    Startposition1Button: TMenuItem;
    ThinkstepEdit: TEdit;
    StartpositionButton: TMenuItem;
    Startposition6utton: TMenuItem;
    StopThinkButton: TMenuItem;
    Tojavaboardbutton: TMenuItem;
    procedure AboutButtonClick(Sender: TObject);
    procedure ComputerFirstButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure HumanFirstButtonClick(Sender: TObject);
    procedure HumanVsHumanButtonClick(Sender: TObject);
    procedure HumanvsHumanClick(Sender: TObject);
    procedure RuleButtonClick(Sender: TObject);
    procedure RedChessClick(Sender: TObject);
    procedure BlackChessClick(Sender: TObject);
    procedure ClosebuttonClick(Sender: TObject);
    procedure SaveButtonClick(Sender: TObject);
    procedure CopyToClipboardButtonClick(Sender: TObject);
    procedure ChessRadioGroupClick(Sender: TObject);
    procedure Chess2Click(Sender: TObject);
    procedure ComputerVsHumanClick(Sender: TObject);
    procedure HumanVsComputerClick(Sender: TObject);
    procedure Chess1Click(Sender: TObject);
    procedure SetupBoardClick(Sender: TObject);
    procedure FinishSetupboardClick(Sender: TObject);
    procedure CancelSetupBoardClick(Sender: TObject);
    procedure LoadButtonClick(Sender: TObject);
    procedure Deletechess(Sender: TObject);
    procedure ClearButtonClick(Sender: TObject);
    procedure BackButtonClick(Sender: TObject);
    procedure Startposition2ButtonClick(Sender: TObject);
    procedure Startposition3ButtonClick(Sender: TObject);
    procedure Startposition4ButtonClick(Sender: TObject);
    procedure Startposition1ButtonClick(Sender: TObject);
    procedure StartpositionButtonClick(Sender: TObject);
    procedure Startposition6uttonClick(Sender: TObject);
    procedure StopThinkButtonClick(Sender: TObject);
    procedure TojavaboardbuttonClick(Sender: TObject);
  private
    // mutistep:Boolean;
    // mutiscore:Integer;
    mutidepth: integer;
    mutitemplist: Tstringlist;
    mutisteplist: Tstringlist;
    mutiscorelist: Tstringlist;
    // mutiscore:array[0..20] of integer;
    mutiSideisRed: Boolean;
    mutiBoard: Tboard;
    MyCriticalSection: TCriticalSection;
    StopThink: Boolean;
    initboard, board: Tboard;
    FirstIsRed: Boolean;
    NotInBack: Boolean;
    // RedMove:boolean;//use in Setupboard
    // step:integer;
    // MoveListA,MoveListB:TMemo;
    RedNoMove: Boolean;
    BlackNoMove: Boolean;
    RealDepth: integer;
    Redlist, Blacklist: Tstringlist;
    AiMovelist: string;
    movedlist: Tstringlist;
    function Muti(const ComputerisRed: Boolean): string;
    // need delete      procedure DoSomethingParallel(Index: PtrInt; Data: Pointer; Item: TMultiThreadProcItem);
    procedure MakeRedMove(const ABoard: Tboard; var temp: Tstringlist);
    procedure MakeBlackMove(const ABoard: Tboard; var temp: Tstringlist);
    // function MakeRedMoveAI(const ABoard:Tboard):TStringList;
    // function MakeBlackMoveAI(const ABoard:Tboard):TStringList;
    procedure MakeClick(t: Tstringlist; Player: string);
    procedure Score(const ABoard: Tboard; var RedScore, BlackScore: integer);
    procedure RedBoardUpdate(var ABoard: Tboard; LastChess: integer);
    procedure BlackBoardUpdate(var ABoard: Tboard; LastChess: integer);
    procedure Updateboard;
    function AI(ABoard: Tboard; ComputerisRed: Boolean): string;
    function MinMax(ABoard: Tboard; SideIsRed: Boolean; depth: integer;
      var aithinkstep: string): integer;
    function MinMaxRandom(ABoard: Tboard; SideIsRed: Boolean; depth: integer;
      var aithinkstep: string): integer;
    function EvaluateScore(const ABoard: Tboard;
      const SideIsRed: Boolean): integer;
    function MinMaxStart(ABoard: Tboard; SideIsRed: Boolean; depth: integer;
      var aithinkstep: string): integer;
    function MutiMinMaxStart(ABoard: Tboard; SideIsRed: Boolean; depth: integer;
      var aithinkstep: string): integer;
    Procedure Scoresort(var scorelist: Tstringlist; var stepno: Tstringlist);
    function ThinkNumber(ABoard: Tboard; SideIsRed: Boolean;
      depth: integer): integer;
    Function BoardtoFen: String;
    function MutiMinMax(ABoard: Tboard; const SideIsRed: Boolean;
      const depth: integer; var aithinkstep: string): integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  {
    PicCompentName: array [1..64] of string =(
    'Image1','Image2','image3','Image4','Image5',
    'Image6','Image7','image8','Image9','Image10',
    'Image11','Image12','image13','Image14','Image15',
    'Image16','Image17','image18','Image19','Image20',
    'Image21','Image22','image23','Image24','Image25',
    'Image26','Image27','image28','Image29','Image30',
    'Image31','Image32','image33','Image34','Image35',
    'Image36','Image37','image38','Image39','Image40',
    'Image41','Image42','image43','Image44','Image45',
    'Image46','Image47','image48','Image49','Image50',
    'Image51','Image52','image53','Image54','Image55',
    'Image56','Image57','image58','Image59','Image60',
    'Image61','Image62','image63','Image64');
  }
  // board:array[1..8,1..8] of integer = (
  {
    Initboard: Tboard = (
    (0,0,0,0,0,0,0,0),
    (0,0,0,0,0,0,0,0),
    (0,0,0,0,0,0,0,0),
    (0,0,0,-1,1,0,0,0),
    (0,0,0,1,-1,0,0,0),
    (0,0,0,0,0,0,0,0),
    (0,0,0,0,0,0,0,0),
    (0,0,0,0,0,0,0,0));

    board:Tboard = (
    (0,0,0,0,0,0,0,0),
    (0,0,0,0,0,0,0,0),
    (0,0,0,0,0,0,0,0),
    (0,0,0,-1,1,0,0,0),
    (0,0,0,1,-1,0,0,0),
    (0,0,0,0,0,0,0,0),
    (0,0,0,0,0,0,0,0),
    (0,0,0,0,0,0,0,0));
  }
  // 1 red ; -1 black ; 0 space
  // eat chess-> new board->produce eat step -> eat chess...
  PosMark: Tboard = ((0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
    (0, -199, 3, -1, -1, -1, -1, 3, -199, 0), (0, 3, -1, -1, -1, -1, -1, -1, 3,
    0), (0, -1, -1, -1, -1, -1, -1, -1, -1, 0), (0, -1, -1, -1, -1, -1, -1, -1,
    -1, 0), (0, -1, -1, -1, -1, -1, -1, -1, -1, 0), (0, -1, -1, -1, -1, -1, -1,
    -1, -1, 0), (0, 3, -1, -1, -1, -1, -1, -1, 3, 0),
    (0, -199, 3, -1, -1, -1, -1, 3, -199, 0), (0, 0, 0, 0, 0, 0, 0, 0, 0, 0));

  {
    BlackPosMark:Tboard = (
    (0,0,0,0,0,0,0,0,0,0),
    (0,200,2,-1,-1,-1,-1,2,200,0),
    (0,2,-1,-1,-1,-1,-1,-1,2,0),
    (0,-1,-1,-1,-1,-1,-1,-1,-1,0),
    (0,-1,-1,-1,-1,-1,-1,-1,-1,0),
    (0,-1,-1,-1,-1,-1,-1,-1,-1,0),
    (0,-1,-1,-1,-1,-1,-1,-1,-1,0),
    (0,2,-1,-1,-1,-1,-1,-1,2,0),
    (0,200,2,-1,-1,-1,-1,2,200,0),
    (0,0,0,0,0,0,0,0,0,0)
    );
  }
implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var
  a, b: integer;
begin
  mutitemplist := Tstringlist.Create;
  mutisteplist := Tstringlist.Create;
  mutiscorelist := Tstringlist.Create;

  MyCriticalSection := TCriticalSection.Create;
  randomize;
  StopThink := False;
  // RedMove:=True;
  for a := 0 to 9 do
    for b := 0 to 9 do
      initboard[a][b] := 0;

  board := initboard;
  FirstIsRed := True;
  NotInBack := True;
  Redlist := Tstringlist.Create;
  Blacklist := Tstringlist.Create;
  movedlist := Tstringlist.Create;
  RedNoMove := False;
  BlackNoMove := False;

  Image28.picture := RedChess.picture;
  Image29.picture := RedChess.picture;
  Image36.picture := RedChess.picture;
  Image37.picture := RedChess.picture;
  Image28.OnClick := RedChess.OnClick;
  Image29.OnClick := RedChess.OnClick;
  Image36.OnClick := RedChess.OnClick;
  Image37.OnClick := RedChess.OnClick;
  Redlist.Add('Image28');
  Redlist.Add('Image29');
  Redlist.Add('Image36');
  Redlist.Add('Image37');
  Label3.Caption := '0';
  Label4.Caption := '0';

end;

function TForm1.Muti(const ComputerisRed: Boolean): String;
  function test(const depth: integer; const cuted: Boolean;
    const fullthink: Boolean): string;
  var
    a, b, c, d, bestscore, cutnum: integer;
    templist, templist2: Tstringlist;
    OneDepthSideisRed: Boolean;
    move, bestmove: string; // cut:Boolean;
  begin
    mutitemplist.clear;
    mutiscorelist.clear;
    // mutitemplist := Tstringlist.Create;
    /// /mutisteplist := Tstringlist.Create;
    // mutiscorelist := Tstringlist.Create;
    templist := Tstringlist.Create;
    templist2 := Tstringlist.Create;
    AiListBox.clear;
    if ComputerisRed = False then
    begin
      OneDepthSideisRed := False;
      if mutisteplist.count <> 0 then
      begin
        templist.AddStrings(mutisteplist);
        // := mutisteplist;
        mutisteplist.clear;
      end
      else
        MakeBlackMove(board, templist);
    end
    else
    begin
      OneDepthSideisRed := True;
      if mutisteplist.count <> 0 then
      begin
        templist.AddStrings(mutisteplist);
        // templist := mutisteplist;
        mutisteplist.clear;
      end
      else
        MakeRedMove(board, templist);
    end;

    mutiSideisRed := OneDepthSideisRed;
    For a := 0 to templist.count - 1 do
    begin
      mutiscorelist.Add('-2000');
      mutisteplist.Add('.');
    end;
    For a := 0 to templist.count - 1 do
    begin

      bestscore := -inf;
      mutiBoard := board;
      if OneDepthSideisRed then
      begin
        RedBoardUpdate(mutiBoard, strtoint(templist[a]));
        MakeBlackMove(mutiBoard, templist2);
      end
      else
      begin
        BlackBoardUpdate(mutiBoard, strtoint(templist[a]));
        MakeRedMove(mutiBoard, templist2);
      end;
      for b := 0 to templist2.count - 1 do
        mutitemplist.Add(inttostr(a) + ' ' + templist[a] + ' ' + templist2[b]);
      if templist2.count = 0 then
        mutitemplist.Add(inttostr(a) + ' ' + templist[a] + ' p');
    end;
    mutidepth := depth;
    // ProcThreadPool.DoParallel(DoSomethingParallel,0,mutitemplist.count-1,nil);// address, startindex, endindex, optional data,max thread
    TParallel.For(0, mutitemplist.count - 1,
      procedure(index: integer)
      var
        ABoard: Tboard;
        a, b, c, d, mutitscore: integer;
        stepno, tempstring, tempstring2, tempstring3, aithinkstep: string;
        SideIsRed: Boolean;
      begin
        MyCriticalSection.Enter;
        tempstring := mutitemplist[index];
        MyCriticalSection.Release;
        For a := 2 to length(tempstring) do
          if tempstring[a] = ' ' then
            break;
        stepno := copy(tempstring, 1, a - 1);
        tempstring := copy(tempstring, a + 1, length(mutitemplist[index]) - a);
        For a := 2 to length(tempstring) do
          if tempstring[a] = ' ' then
            break;
        tempstring2 := copy(tempstring, 1, a - 1);
        tempstring := copy(tempstring, a + 1, 2);
        d := strtoint(tempstring2);
        b := d div 8 + 1;
        c := d mod 8;
        if c = 0 then
        begin
          Dec(b);
          c := 8;
        end;
        aithinkstep := inttostr(c) + ',' + inttostr(b);
        ABoard := board;
        if tempstring[1] <> 'p' then
        begin
          d := strtoint(tempstring);
          b := d div 8 + 1;
          c := d mod 8;
          if c = 0 then
          begin
            Dec(b);
            c := 8;
          end;
          aithinkstep := aithinkstep + '->' + inttostr(c) + ',' + inttostr(b);
          if mutiSideisRed = True then
          begin
            RedBoardUpdate(ABoard, strtoint(tempstring2));
            BlackBoardUpdate(ABoard, strtoint(tempstring));
          end
          else
          begin
            BlackBoardUpdate(ABoard, strtoint(tempstring2));
            RedBoardUpdate(ABoard, strtoint(tempstring));
          end;
          if mutidepth > 5 then
            mutitscore := -MutiMinMaxStart(ABoard, mutiSideisRed, mutidepth,
              aithinkstep)
          else
            mutitscore := -MutiMinMax(ABoard, mutiSideisRed, mutidepth,
              aithinkstep);
        end
        else
        begin
          aithinkstep := aithinkstep + '->PASS';
          if mutiSideisRed = True then
            RedBoardUpdate(ABoard, strtoint(tempstring2))
          Else
            BlackBoardUpdate(ABoard, strtoint(tempstring2));
          mutitscore := -MutiMinMax(ABoard, mutiSideisRed, mutidepth + 1,
            aithinkstep);
        end;
        a := strtoint(stepno);
        MyCriticalSection.Acquire;
        if mutitscore > strtoint(mutiscorelist[a]) then
        begin
          mutiscorelist[a] := inttostr(mutitscore);
          mutisteplist[a] := aithinkstep;
        end;
        MyCriticalSection.Leave;
      end);
    for a := 0 to mutiscorelist.count - 1 do
      mutiscorelist[a] := inttostr(-strtoint(mutiscorelist[a]));
    Scoresort(mutiscorelist, mutisteplist);
    If (cuted = False) or (fullthink = True) then
    begin
      for a := 0 to mutiscorelist.count - 1 do
        AiListBox.items.Add(mutiscorelist[a] + ':' + mutisteplist[a]);
      b := mutiscorelist.count - 1;
      for a := b downto 1 do
      begin
        if strtoint(mutiscorelist[a]) < strtoint(mutiscorelist[0]) then
        begin
          mutiscorelist.Delete(a);
          mutisteplist.Delete(a);
        end
      end;
      a := Random(mutisteplist.count);
      Result := 'image' + inttostr(8 * strtoint(copy(mutisteplist[a], 3, 1)) +
        strtoint(copy(mutisteplist[a], 1, 1)) - 8);
      ThinkstepEdit.text := AiListBox.items[a];
      AIDisplayScoreLabel.Caption := mutiscorelist[0];
    end
    else
    begin
      b := mutisteplist.count div 2 + 1;
      c := mutisteplist.count - 1;
      for a := b to c do
        mutisteplist.Delete(mutisteplist.count - 1);
      for a := 0 to mutisteplist.count - 1 do
      begin
        b := strtoint(copy(mutisteplist[a], 1, 1));
        c := strtoint(copy(mutisteplist[a], 3, 1));
        mutisteplist[a] := inttostr(8 * c + b - 8);
      end;
    end;
    templist.free;
    templist2.free;
    mutitemplist.clear;
    mutiscorelist.clear;
    // mutitemplist.free;
    // mutiscorelist.free;
  end;

var
  a, b, c, tempdepth: integer;
begin
  // mutisteplist := Tstringlist.Create;

  if ComputerisRed = True then
  begin
    MakeRedMove(board, Redlist);
    c := Redlist.count;
    Redlist.clear;
  end
  else
  begin
    MakeBlackMove(board, Blacklist);
    c := Blacklist.count;
    Blacklist.clear;
  end;
  Score(board, a, b);
  tempdepth := strtoint(EndgameDepth.text);
  if a + b + tempdepth > 64 then
    tempdepth := 64 - a - b
  else
    tempdepth := strtoint(NornalDepth.text);

  if (c > 4) and (a + b < 46) then
  begin
    // nornally  tempdepth:= strtoint(NornalDepth.text)-2;
    tempdepth := tempdepth - 4;
    test(tempdepth, True, False);
    // use mutisteplist to store cuted step
    tempdepth := tempdepth + 2;
    // tempdepth:= strtoint(NornalDepth.text)-2;
    Result := test(tempdepth, False, False);
  end
  else
  begin
    tempdepth := tempdepth - 2;
    // tempdepth:= strtoint(NornalDepth.text)-2;
    Result := test(tempdepth, True, True);
  end;
  mutisteplist.clear;
  // mutisteplist.free;
end;

{
  procedure TForm1.DoSomethingParallel(Index: PtrInt; Data: Pointer; Item: TMultiThreadProcItem);
  var Aboard:Tboard;a,B,C,D,mutitscore:integer;stepno,tempstring,tempstring2,tempstring3,aithinkstep:string;SideisRed:Boolean;
  begin
  // system.EnterCriticalsection(MyCriticalSection);
  tempstring := mutitemplist[index];
  // system.LeaveCriticalsection(MyCriticalSection);
  For a := 2 to length(tempstring) do
  if tempstring[a] = ' ' then break;
  stepno := copy(tempstring,1,a-1);
  tempstring :=  copy(tempstring,a+1,length(mutitemplist[index])-a);
  For a := 2 to length(tempstring) do
  if tempstring[a] = ' ' then break;
  tempstring2 := copy(tempstring,1,a-1);
  tempstring := copy(tempstring,a+1,2);
  d:= strtoint(tempstring2);
  b:= d div 8 +1 ;
  c:= d mod 8;
  if c = 0 then
  begin
  Dec(b);
  c:=8;
  end;
  aithinkstep := inttostr(c)+','+inttostr(b);
  Aboard:= board;
  if tempstring[1] <> 'p' then
  begin
  d:= strtoint(tempstring);
  b:= d div 8 +1 ;
  c:= d mod 8;
  if c = 0 then
  begin
  Dec(b);
  c:=8;
  end;
  aithinkstep := aithinkstep+'->'+inttostr(c)+','+inttostr(b);
  if mutisideisRed = True then
  begin
  RedboardUpdate(Aboard,strtoint(tempstring2));
  Blackboardupdate(Aboard,strtoint(tempstring));
  end
  else begin
  Blackboardupdate(Aboard,strtoint(tempstring2));
  RedboardUpdate(Aboard,strtoint(tempstring));
  end;
  if  mutidepth > 5 then
  mutitscore := -MutiMinMaxStart(Aboard,mutiSideIsRed,mutidepth,aithinkstep)
  else
  mutitscore := -MutiMinMax(Aboard,mutiSideIsRed,mutidepth,aithinkstep);
  end
  else begin
  aithinkstep := aithinkstep + '->PASS';
  if mutisideisRed = True then
  RedboardUpdate(Aboard,strtoint(tempstring2))
  Else
  Blackboardupdate(Aboard,strtoint(tempstring2));
  mutitscore := -MutiMinMax(Aboard,mutiSideIsRed,mutidepth+1,aithinkstep);
  end;
  a := strtoint(stepno);
  MyCriticalSection.Acquire;
  if mutitscore > strtoint(mutiscorelist[a]) then
  begin
  mutiscorelist[a] := inttostr(mutitscore);
  mutisteplist[a] := aithinkstep;
  end;
  MyCriticalSection.Release;

  end;
}
procedure TForm1.AboutButtonClick(Sender: TObject);
begin
  ShowMessage('Copyright 2011,2012 by Wu Hon Sum' + #13 +
    'This program is free software: you can redistribute it and/or modify' + #13
    + 'it under the terms of the GNU General Public License as published by' +
    #13 + 'the Free Software Foundation, either version 3 of the License, or' +
    #13 + 'any later version.');
end;

procedure TForm1.ComputerFirstButtonClick(Sender: TObject);
begin
  HumanVsHumanButton.Click;
  ComputerVsHuman.Click;
end;

procedure TForm1.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  mutitemplist.free;
  mutisteplist.free;
  mutiscorelist.free;
  MyCriticalSection.free;

end;

function TForm1.MutiMinMaxStart(ABoard: Tboard; SideIsRed: Boolean;
depth: integer; var aithinkstep: string): integer;
var
  a, b, c, d, bestvalue, value: integer;
  templist: Tstringlist;
  tempboard: Tboard;
  scorelist, steplist: Tstringlist;
  aithinksteplist: Tstringlist;
  oldaithinkstep: string; // bestaithinkstep:string;
  // var a,b,c,bestvalue, value:integer;templist:tstringlist;tempboard:Tboard;sameboard:boolean;
begin
  // 一般來說，這裡有一個判斷棋局是否結束的函數，
  // 一旦棋局結束就不必繼續搜索了，直接返回極值。
  // 但由於黑白棋不存在中途結束的情況，故省略。

  Score(ABoard, a, b);
  if a = 0 then
  begin
    if SideIsRed then
      Result := 2000
    else
      Result := -2000;
    exit;
  end;
  if b = 0 then
  begin
    if SideIsRed then
      Result := -2000
    else
      Result := 2000;
    exit;
  end;
  if (depth <= 0) or (a + b > 63) then // 葉子節點
  begin
    Result := EvaluateScore(ABoard, SideIsRed); // 直接返回對局面的估值
    exit;
  end;
  // if SideIsRed then
  bestvalue := -inf; // 初始最佳值設為負無窮
  // else
  // bestvalue:=INF;
  // 生成走法
  templist := Tstringlist.Create;
  if SideIsRed Then
    // templist:=MakeRedMoveAI(Aboard)
    MakeRedMove(ABoard, templist)
  else
    // templist:=MakeBlackMoveAI(Aboard);
    MakeBlackMove(ABoard, templist);
  if templist.count = 0 then
  begin
    if SideIsRed Then
      MakeBlackMove(ABoard, templist)
    else
      MakeRedMove(ABoard, templist);

    if templist.count = 0 then // both red and black no move
    begin
      templist.free;
      // result:=0;
      Result := EvaluateScore(ABoard, SideIsRed); // 直接返回對局面的估值
      exit;
    end;
    // templist.Free;
    // if a + b > 63 then begin
    // result:= -EvaluateScore(Aboard,not SideIsRed);
    // exit;
    // end
    // else begin
    Result := -MutiMinMaxStart(ABoard, Not SideIsRed, depth, aithinkstep);
    // );//搜索子節點，注意前面的負號
    // result := -MinMaxSecond(Aboard,Not SideIsRed,depth);//);//搜索子節點，注意前面的負號
    // if a+ b < 40 then
    // result := result + 100;
    templist.free;
    exit;
  end;
  tempboard := ABoard;
  scorelist := Tstringlist.Create;
  steplist := Tstringlist.Create;
  oldaithinkstep := aithinkstep + '->';
  For a := 0 to templist.count - 1 do
  begin
    // Application.ProcessMessages;

    aithinkstep := '';
    // 走一步棋;//
    // 局面aboard 隨之改變
    ABoard := tempboard;
    steplist.Add(templist[a]);
    if SideIsRed Then
      RedBoardUpdate(ABoard, strtoint(templist[a]))
    else
      BlackBoardUpdate(ABoard, strtoint(templist[a]));
    value := -MutiMinMax(ABoard, Not SideIsRed, depth - 2, aithinkstep);
    // );//搜索子節點，注意前面的負號
    scorelist.Add(inttostr(value));

  end;
  Scoresort(scorelist, steplist);
  aithinksteplist := Tstringlist.Create;
  // for a := scorelist.Count div 2 to scorelist.Count do
  // ProgressBar1.StepIt;// need modied
  For a := 0 to scorelist.count div 2 do // need modied
  begin
    // 走一步棋;//
    // 局面aboard 隨之改變
    ABoard := tempboard;
    aithinkstep := '';
    d := strtoint(steplist[a]);
    b := d div 8 + 1;
    c := d mod 8;
    if c = 0 then
    begin
      b := b - 1;
      c := 8;
    end;
    aithinkstep := aithinkstep + inttostr(c) + ',' + inttostr(b);

    if SideIsRed Then
      RedBoardUpdate(ABoard, strtoint(steplist[a]))
    else
      BlackBoardUpdate(ABoard, strtoint(steplist[a]));

    value := -MutiMinMax(ABoard, Not SideIsRed, depth - 1, aithinkstep);
    // );//搜索子節點，注意前面的負號

    // Aboard:=Tempboard;//撤銷剛才的一步;//恢復局面

    // for display move value need modied;
    d := strtoint(steplist[a]);
    b := d div 8 + 1;
    c := d mod 8;
    if c = 0 then
    begin
      b := b - 1;
      c := 8;
    end;
    // AiListBox.items.Add(intTostr(c)+','+intTostr(b)+' '+intTostr(value));
    if value = bestvalue then
      aithinksteplist.Add(aithinkstep)
    else if value > bestvalue then
    begin
      AiMovelist := steplist[a] + ' ' + inttostr(value);
      aithinksteplist.clear;
      // support random best move
      aithinksteplist.Add(aithinkstep);
      // bestaithinkstep:=aithinkstep;

      // end of display value
      // if sideIsRed then
      // begin
      // if value > bestvalue then
      // begin
      bestvalue := value;
      // if depth = Realdepth then
      // aimovelist.Add(templist[a]+' '+intTostr(value));
    end;
    // end;
  end;
  {
    else begin
    if value < bestvalue then
    begin
    bestvalue:=value;
    if depth = Realdepth then
    aimovelist.Add(templist[a]+' '+intTostr(value));
    end;
    end;
    end;
  }
  b := Random(aithinksteplist.count);
  AiMovelist := inttostr(8 * strtoint(copy(aithinksteplist[b], 3, 1)) +
    strtoint(copy(aithinksteplist[b], 1, 1)) - 8) + ' ' + inttostr(bestvalue);
  aithinkstep := oldaithinkstep + aithinksteplist[b];
  Result := bestvalue;
  // aithinkstep:=bestaithinkstep;
  scorelist.free;
  steplist.free;
  templist.free;
  aithinksteplist.free;
end;

function TForm1.MutiMinMax(ABoard: Tboard; const SideIsRed: Boolean;
const depth: integer; var aithinkstep: string): integer;
var
  a, b, c, d, bestvalue, value: integer;
  templist: Tstringlist;
  tempboard: Tboard;
  oldaithinkstep, bestaithinkstep: string;
  // var a,b,c,bestvalue, value:integer;templist:tstringlist;tempboard:Tboard;sameboard:boolean;
begin
  // 一般來說，這裡有一個判斷棋局是否結束的函數，
  // 一旦棋局結束就不必繼續搜索了，直接返回極值。
  // 但由於黑白棋不存在中途結束的情況，故省略。

  // bestaithinkstep:=aithinkstep;
  a := 0;
  b := 0;
  Score(ABoard, a, b);
  if a = 0 then
  begin
    if SideIsRed then
      Result := 2000
    else
      Result := -2000;
    exit;
  end;
  if b = 0 then
  begin
    if SideIsRed then
      Result := -2000
    else
      Result := 2000;
    exit;
  end;
  if (depth <= 0) or (a + b > 63) or StopThink then // 葉子節點
  begin
    Result := EvaluateScore(ABoard, SideIsRed); // 直接返回對局面的估值
    exit;
  end;
  templist := Tstringlist.Create;
  bestvalue := -inf; // 初始最佳值設為負無窮
  // 生成走法
  // templist:=tstringlist.Create;
  if SideIsRed Then
    // templist:=MakeRedMoveAI(Aboard)
    MakeRedMove(ABoard, templist)
  else
    // templist:=MakeBlackMoveAI(Aboard);
    MakeBlackMove(ABoard, templist);
  if templist.count = 0 then
  begin
    if SideIsRed Then
      MakeBlackMove(ABoard, templist)
    else
      MakeRedMove(ABoard, templist);
    if templist.count = 0 then // both red and black no move
    begin
      templist.free;
      Result := EvaluateScore(ABoard, SideIsRed); // 直接返回對局面的估值
      exit;
    end;
    aithinkstep := aithinkstep + '->PASS';
    Result := -MutiMinMax(ABoard, Not SideIsRed, depth, aithinkstep);
    // );//搜索子節點，注意前面的負號
    templist.free;
    exit;
  end;
  tempboard := ABoard;
  oldaithinkstep := aithinkstep;
  For a := 0 to templist.count - 1 do
  begin
    // Application.ProcessMessages;
    aithinkstep := oldaithinkstep;
    d := strtoint(templist[a]);
    b := d div 8 + 1;
    c := d mod 8;
    if c = 0 then
    begin
      b := b - 1;
      c := 8;
    end;
    aithinkstep := aithinkstep + '->' + inttostr(c) + ',' + inttostr(b);
    // 走一步棋;//
    // 局面aboard 隨之改變
    ABoard := tempboard;
    if SideIsRed Then
      RedBoardUpdate(ABoard, strtoint(templist[a]))
    else
      BlackBoardUpdate(ABoard, strtoint(templist[a]));
    value := -MutiMinMax(ABoard, Not SideIsRed, depth - 1, aithinkstep);
    // );//搜索子節點，注意前面的負號

    if value > bestvalue then
    begin
      bestvalue := value;
      bestaithinkstep := aithinkstep;
    end;
  end;
  templist.free;
  aithinkstep := bestaithinkstep;
  Result := bestvalue;
end;

procedure TForm1.MakeRedMove(const ABoard: Tboard; var temp: Tstringlist);
var
  b, c, d: integer;
Label nextpeace;
begin
  // aBoard is for ai work
  temp.clear;
  for b := 1 to 8 do
    for c := 1 to 8 do
    begin
      if ABoard[b, c] <> 0 then
        goto nextpeace;
      // from left to right
      if c < 7 then
        if ABoard[b][c + 1] = -1 then
        begin
          for d := 2 to 7 do
          begin
            if c + d < 9 then
            begin
              if ABoard[b][c + d] = 1 then
              begin
                temp.Add(inttostr(8 * c + b - 8));
                goto nextpeace;
              end
              else if ABoard[b][c + d] <> -1 then
                break;
            end;
          end;
        end;

      if c > 2 then // from right to left
      begin
        if ABoard[b][c - 1] = -1 then
        begin
          for d := 2 to 7 do
          begin
            if c - d > 0 then
            begin
              if ABoard[b][c - d] = 1 then
              begin
                temp.Add(inttostr(8 * c + b - 8));
                goto nextpeace;
              end
              else if ABoard[b][c - d] <> -1 then
                break;
            end;
          end;
        end;
      end;

      if b < 7 then // from top to bottom
      begin
        if ABoard[b + 1][c] = -1 then
        begin
          for d := 2 to 7 do
          begin
            if b + d < 9 then
            begin
              if ABoard[b + d][c] = 1 then
              begin
                temp.Add(inttostr(8 * c + b - 8));
                goto nextpeace;;
              end
              else if ABoard[b + d][c] <> -1 then
                break;
            end;
          end;
        end;
      end;

      if b > 2 then // from bottom to top
      begin
        if ABoard[b - 1][c] = -1 then
        begin
          for d := 2 to 7 do
          begin
            if b - d > 0 then
            begin
              if ABoard[b - d][c] = 1 then
              begin
                temp.Add(inttostr(8 * c + b - 8));
                goto nextpeace;;
              end
              else if ABoard[b - d][c] <> -1 then
                break;
            end;
          end;
        end;
      end;

      if (b < 7) and (c < 7) then // from left top and right bottom
      begin
        if ABoard[b + 1][c + 1] = -1 then
        begin
          for d := 2 to 7 do
          begin
            if (b + d < 9) and (c + d < 9) then
            begin
              if ABoard[b + d][c + d] = 1 then
              begin
                temp.Add(inttostr(8 * c + b - 8));
                goto nextpeace;;
              end
              else if ABoard[b + d][c + d] <> -1 then
                break;
            end;
          end;
        end;
      end;

      if (b > 2) and (c > 2) then // from right bottom to left top
      begin
        if ABoard[b - 1][c - 1] = -1 then
        begin
          for d := 2 to 7 do
          begin
            if (b - d > 0) and (c - d > 0) then
            begin
              if ABoard[b - d][c - d] = 1 then
              begin
                temp.Add(inttostr(8 * c + b - 8));
                goto nextpeace;
              end
              else if ABoard[b - d][c - d] <> -1 then
                break;
            end;
          end;
        end;
      end;

      if (b < 7) and (c > 2) then // from left bottom to right top
      begin
        if ABoard[b + 1][c - 1] = -1 then
        begin
          for d := 2 to 7 do
          begin
            if (b + d < 9) and (c - d > 0) then
            begin
              if ABoard[b + d][c - d] = 1 then
              begin
                temp.Add(inttostr(8 * c + b - 8));
                goto nextpeace;
              end
              else if ABoard[b + d][c - d] <> -1 then
                break;
            end;
          end;
        end;
      end;

      if (b > 2) and (c < 7) then // from right top to left bottom
      begin
        if ABoard[b - 1][c + 1] = -1 then
        begin
          for d := 2 to 7 do
          begin
            if (b - d > 0) and (c + d < 9) then
            begin
              if ABoard[b - d][c + d] = 1 then
              begin
                temp.Add(inttostr(8 * c + b - 8));
                goto nextpeace;
              end
              else if ABoard[b - d][c + d] <> -1 then
                goto nextpeace;
            end;
          end;
        end;
      end;
    nextpeace:
    end;
end;

procedure TForm1.MakeBlackMove(const ABoard: Tboard; var temp: Tstringlist);
var
  b, c, d: integer;
Label nextpeace;
begin

  // make all unplayed box
  temp.clear;
  for b := 1 to 8 do
    for c := 1 to 8 do
    begin
      if ABoard[b, c] <> 0 then
        Continue;
      // from left to right

      if c < 7 then
        if ABoard[b][c + 1] = 1 then
        begin
          for d := 2 to 7 do
          begin
            if c + d < 9 then
            begin
              if ABoard[b][c + d] = -1 then
              begin
                temp.Add(inttostr(8 * c + b - 8));
                goto nextpeace;;
              end
              else if ABoard[b][c + d] <> 1 then
                break;
            end;
          end;
        end;

      if c > 2 then // from right to left
      begin
        if ABoard[b][c - 1] = 1 then
        begin
          for d := 2 to 7 do
          begin
            if c - d > 0 then
            begin
              if ABoard[b][c - d] = -1 then
              begin
                temp.Add(inttostr(8 * c + b - 8));
                goto nextpeace;
              end
              else if ABoard[b][c - d] <> 1 then
                break;
            end;
          end;
        end;
      end;

      if b < 7 then // from top to bottom
      begin
        if ABoard[b + 1][c] = 1 then
        begin
          for d := 2 to 7 do
          begin
            if b + d < 9 then
            begin
              if ABoard[b + d][c] = -1 then
              begin
                temp.Add(inttostr(8 * c + b - 8));
                goto nextpeace;
              end
              else if ABoard[b + d][c] <> 1 then
                break;
            end;
          end;
        end;
      end;

      if b > 2 then // from bottom to top
      begin
        if ABoard[b - 1][c] = 1 then
        begin
          for d := 2 to 7 do
          begin
            if b - d > 0 then
            begin
              if ABoard[b - d][c] = -1 then
              begin
                temp.Add(inttostr(8 * c + b - 8));
                goto nextpeace;;
              end
              else if ABoard[b - d][c] <> 1 then
                break;
            end;
          end;
        end;
      end;

      if (b < 7) and (c < 7) then // from left top and right bottom
      begin
        if ABoard[b + 1][c + 1] = 1 then
        begin
          for d := 2 to 7 do
          begin
            if (b + d < 9) and (c + d < 9) then
            begin
              if ABoard[b + d][c + d] = -1 then
              begin
                temp.Add(inttostr(8 * c + b - 8));
                goto nextpeace;
              end
              else if ABoard[b + d][c + d] <> 1 then
                break;
            end;
          end;
        end;
      end;

      if (b > 2) and (c > 2) then // from right bottom to left top
      begin
        if ABoard[b - 1][c - 1] = 1 then
        begin
          for d := 2 to 7 do
          begin
            if (b - d > 0) and (c - d > 0) then
            begin
              if ABoard[b - d][c - d] = -1 then
              begin
                temp.Add(inttostr(8 * c + b - 8));
                goto nextpeace;
              end
              else if ABoard[b - d][c - d] <> 1 then
                break;
            end;
          end;
        end;
      end;

      if (b < 7) and (c > 2) then // from left bottom to right top
      begin
        if ABoard[b + 1][c - 1] = 1 then
        begin
          for d := 2 to 7 do
          begin
            if (b + d < 9) and (c - d > 0) then
            begin
              if ABoard[b + d][c - d] = -1 then
              begin
                temp.Add(inttostr(8 * c + b - 8));
                goto nextpeace;
              end
              else if ABoard[b + d][c - d] <> 1 then
                break;
            end;
          end;
        end;
      end;

      if (b > 2) and (c < 7) then // from right top to left bottom
      begin
        if ABoard[b - 1][c + 1] = 1 then
        begin
          for d := 2 to 7 do
          begin
            if (b - d > 0) and (c + d < 9) then
            begin
              if ABoard[b - d][c + d] = -1 then
              begin
                temp.Add(inttostr(8 * c + b - 8));
                goto nextpeace;
              end
              else if ABoard[b - d][c + d] <> 1 then
                goto nextpeace;
            end;
          end;
        end;
      end;
    nextpeace:
    end;
end;
// end of aimove

procedure TForm1.MakeClick(t: Tstringlist; Player: string);
var
  a: integer;
begin
  for a := 0 to t.count - 1 do
    t[a] := 'Image' + t[a];
  Redlist.clear;
  Blacklist.clear;
  if Player = 'player1' then
  begin
    for a := 0 to t.count - 1 do
      Redlist.Add(t[a]);
  end
  else
  begin
    for a := 0 to t.count - 1 do
      Blacklist.Add(t[a]);
  end;
end;

procedure TForm1.RedBoardUpdate(var ABoard: Tboard; LastChess: integer);
var
  a, b, c, d: integer;
begin
  a := LastChess;
  c := a div 8 + 1;
  b := a mod 8;
  // if c = 0 then
  // Aboard[b-1][8] := 1
  // else

  if b = 0 then
  begin
    c := c - 1;
    b := 8;
  end;
  // }
  ABoard[b][c] := 1;
  // left

  if c > 2 then
  begin
    if (ABoard[b][c - 1] = -1) and (ABoard[b][c - 2] <> 0) then
    begin
      d := 1;
      while (ABoard[b][c - d] = -1) do
        inc(d);
      if ABoard[b][c - d] = 1 then
      begin
        for a := 1 to d - 1 do
          ABoard[b][c - a] := 1;
      end;
    end;
  end;



  // right test

  if c < 7 then
  begin
    if (ABoard[b][c + 1] = -1) and (ABoard[b][c + 2] <> 0) then
    begin
      d := 1;
      while (ABoard[b][c + d] = -1) do
        inc(d);
      if ABoard[b][c + d] = 1 then
      begin
        for a := 1 to d - 1 do
          ABoard[b][c + a] := 1;
      end;
    end;
  end;



  // top test

  if b > 2 then
  begin
    if (ABoard[b - 1][c] = -1) and (ABoard[b - 2][c] <> 0) then
    begin
      d := 1;
      while (ABoard[b - d][c] = -1) do
        inc(d);
      if ABoard[b - d][c] = 1 then
      begin
        for a := 1 to d - 1 do
          ABoard[b - a][c] := 1;
      end;
    end;
  end;


  // bottom test

  if b < 7 then
  begin
    if (ABoard[b + 1][c] = -1) and (ABoard[b + 2][c] <> 0) then
    begin
      d := 1;
      while (ABoard[b + d][c] = -1) do
        inc(d);
      if ABoard[b + d][c] = 1 then
      begin
        for a := 1 to d - 1 do
          ABoard[b + a][c] := 1;
      end;
    end;
  end;



  // left top test

  if (b - 2 > 0) and (c - 2 > 0) then
  begin
    if (ABoard[b - 1][c - 1] = -1) and (ABoard[b - 2][c - 2] <> 0) then
    begin
      d := 1;
      while (ABoard[b - d][c - d] = -1) do
        inc(d);
      if ABoard[b - d][c - d] = 1 then
      begin
        for a := 1 to d - 1 do
          ABoard[b - a][c - a] := 1;
      end;
    end;
  end;



  // left bottom test

  if (b < 7) and (c > 2) then
  begin
    if (ABoard[b + 1][c - 1] = -1) and (ABoard[b + 2][c - 2] <> 0) then
    begin
      d := 1;
      while (ABoard[b + d][c - d] = -1) do
        inc(d);
      if ABoard[b + d][c - d] = 1 then
      begin
        for a := 1 to d - 1 do
          ABoard[b + a][c - a] := 1;
      end;
    end;
  end;


  // right bottom test

  if (b < 7) and (c < 7) then
  begin
    if (ABoard[b + 1][c + 1] = -1) and (ABoard[b + 2][c + 2] <> 0) then
    begin
      d := 1;
      while (ABoard[b + d][c + d] = -1) do
        inc(d);
      if ABoard[b + d][c + d] = 1 then
      begin
        for a := 1 to d - 1 do
          ABoard[b + a][c + a] := 1;
      end;
    end;
  end;



  // right top fixed 2 nd

  if (b - 2 > 0) and (c + 2 < 9) then
  begin
    if (ABoard[b - 1][c + 1] = -1) and (ABoard[b - 2][c + 2] <> 0) then
    begin
      d := 1;
      while (ABoard[b - d][c + d] = -1) do
        inc(d);
      if ABoard[b - d][c + d] = 1 then
      begin
        for a := 1 to d - 1 do
          ABoard[b - a][c + a] := 1;
      end;
    end;
  end;

  // give another play
end;

procedure TForm1.RedChessClick(Sender: TObject);
// update chess
var
  a, b, c: integer;
  templist: Tstringlist;
begin
  // clean the t
  For a := 0 to Redlist.count - 1 do
  begin
    //
    // if TWinControl(FindComponent(Redlist[a])) <> TWinControl(Sender) then
    // begin
    TImage(FindComponent(Redlist[a])).picture := nil;
    TImage(FindComponent(Redlist[a])).OnClick := nil;
    // end;
  end;
  // clean move
  TImage(Sender).picture := Chess2.picture;
  TImage(Sender).OnClick := nil;

  if NotInBack = True then
  begin
    c := movedlist.Add('Red');
    for a := 1 to 8 do
      for b := 1 to 8 do
        movedlist[c] := movedlist[c] + inttostr(board[a][b] + 1);
  end;
  a := strtoint(copy(TComponent(Sender).name, 6, 2));
  // temp fix wrong ?
  b := a div 8 + 1;
  c := a mod 8;
  if c = 0 then
  begin
    b := b - 1;
    c := 8;
  end;
  // a := (c-1)*8 + b;
  board[c][b] := 1;

  if NotInBack = True then
  begin
    if c <> 0 then
      StepListBox.items.Add('Red ' + inttostr(c) + ',' + inttostr(b))
    else
      StepListBox.items.Add('Red 8,' + inttostr(b - 1));
  end;
  if StepListBox.items.count > 1 then
    BackButton.enabled := True;
  StepListBox.ItemIndex := StepListBox.items.count - 1;
  Redlist.clear;
  Blacklist.clear;
  Score(board, b, c);
  if b + c < 4 then
  begin
    Label3.Caption := inttostr(b);
    Label4.Caption := inttostr(c);
    Image28.OnClick := nil;
    Image29.OnClick := nil;
    Image36.OnClick := nil;
    Image37.OnClick := nil;
    templist := Tstringlist.Create;
    if board[4][4] = 0 then
    begin
      Image28.OnClick := BlackChessClick;
      Image28.picture := BlackChess.picture;
      Blacklist.Add('Image28');
      templist.Add('Image28');
    end;
    if board[5][4] = 0 then
    begin
      Image29.OnClick := BlackChessClick;
      Image29.picture := BlackChess.picture;
      Blacklist.Add('Image29');
      templist.Add('Image29');
    end;
    if board[4][5] = 0 then
    begin
      Image36.OnClick := BlackChessClick;
      Image36.picture := BlackChess.picture;
      Blacklist.Add('Image36');
      templist.Add('Image36');
    end;
    if board[5][5] = 0 then
    begin
      Image37.OnClick := BlackChessClick;
      Image37.picture := BlackChess.picture;
      Blacklist.Add('Image37');
      templist.Add('Image37');
    end;
    a := Random(templist.count);
    if HumanVsComputer.Checked = True then
      BlackChessClick(TImage(FindComponent(templist[a])));
    templist.free;
    exit;
  end;
  RedBoardUpdate(board, a);
  Score(board, b, c);
  Label3.Caption := inttostr(b);
  Label4.Caption := inttostr(c);
  templist := Tstringlist.Create;
  // give another play
  MakeBlackMove(board, templist);
  if templist.count > 0 then
  begin
    MakeClick(templist, 'player2');
    RedNoMove := False;
    BlackNoMove := False;
    Updateboard;
    if (HumanVsComputer.Checked = True) and (FirstIsRed = True) or
      (ComputerVsHuman.Checked = True) and (FirstIsRed = False) then
    begin
      Application.ProcessMessages;
      Sleep(2000);
      BlackChessClick(TImage(FindComponent(AI(board, False))));
      // Updateboard; AiMoveList
    end;
  end
  else
  begin
    if NotInBack = False then
      exit;
    StepListBox.items.Add('Black pass');
    c := movedlist.Add('Blackpass');
    for a := 1 to 8 do
      for b := 1 to 8 do
        movedlist[c] := movedlist[c] + inttostr(board[a][b] + 1);
    if StepListBox.items.count > 1 then
      BackButton.enabled := True;
    if RedNoMove = True then
    begin
      Updateboard;
      Score(board, a, b);
      if a < b Then
        ShowMessage('Both no more move,finish game' + #13 + 'Red win')
      else if a < b then
        ShowMessage('Both no more move,finish game' + #13 + 'Black win')
      else if a = b then
        ShowMessage('Both no more move,finish game' + #13 + 'Draw');
    end
    else
    begin
      Updateboard;
      templist.clear;
      if a + b <> 64 then
        ShowMessage('Black no move');
      MakeRedMove(board, templist);
      if templist.count > 0 then
      begin
        MakeClick(templist, 'player1');
        RedNoMove := False;
        BlackNoMove := False;
        Updateboard;
        // if ComputerVsHuman.Checked = true then
        if (ComputerVsHuman.Checked = True) and (FirstIsRed = True) then
        begin
          Application.ProcessMessages;
          Sleep(2000);
          // RedChessclick(Timage(FindComponent(templist[0])));
          RedChessClick(TImage(FindComponent(AI(board, True))));
          // Updateboard;
        end;
      end
      else
      begin
        if NotInBack = True then
        begin
          StepListBox.items.Add('Red pass');
          c := movedlist.Add('Redpass');
          for a := 1 to 8 do
            for b := 1 to 8 do
              movedlist[c] := movedlist[c] + inttostr(board[a][b] + 1);
        end;
        if StepListBox.items.count > 1 then
          BackButton.enabled := True;
        Score(board, a, b);
        if a < b Then
          ShowMessage('Both no more move,finish game' + #13 + 'Red win')
        else if a > b then
          ShowMessage('Both no more move,finish game' + #13 + 'Black win')
        else if a = b then
          ShowMessage('Both no more move,finish game' + #13 + 'Draw');
      end;
    end;
  end;
  templist.free;
end;

procedure TForm1.Score(const ABoard: Tboard; var RedScore, BlackScore: integer);
var
  a, b: integer;
begin
  RedScore := 0;
  BlackScore := 0;
  for a := 1 to 8 do
  begin
    for b := 1 to 8 do
    begin
      if ABoard[a][b] = 1 then
        inc(RedScore)
      else if ABoard[a][b] = -1 then
        inc(BlackScore)
    end;
  end;
end;

procedure TForm1.Updateboard;
var
  a, b: integer;
begin
  // draw general picture
  for a := 1 to 8 do
    for b := 1 to 8 do
    begin
      if board[a, b] = 1 then
        TImage(FindComponent('image' + inttostr(8 * b + a - 8))).picture :=
          Chess2.picture
      else if board[a, b] = -1 then
        TImage(FindComponent('image' + inttostr(8 * b + a - 8))).picture :=
          Chess1.picture
      else if board[a, b] = 0 then
        TImage(FindComponent('image' + inttostr(8 * b + a - 8))).picture := nil;
      TImage(FindComponent('image' + inttostr(8 * b + a - 8))).OnClick := nil;
    end;
  // draw red picture

  // for a:=0 to movelist.Lines.Count-1 do
  for a := 0 to Redlist.count - 1 do
  begin
    TImage(FindComponent(Redlist[a])).picture := RedChess.picture;
    TImage(FindComponent(Redlist[a])).OnClick := RedChess.OnClick;
    // Timage(FindComponent(movelist.Lines[a])).picture := Redchess.picture;
    // Timage(FindComponent(movelist.Lines[a])).OnClick := Redchess.onclick;
  end;
  // for a:=0 to movelist.Lines.Count-1 do
  for a := 0 to Blacklist.count - 1 do
  begin
    TImage(FindComponent(Blacklist[a])).picture := BlackChess.picture;
    TImage(FindComponent(Blacklist[a])).OnClick := BlackChess.OnClick;
    // Timage(FindComponent(Blacklist.Lines[a])).picture := Chess4.picture;
    // Timage(FindComponent(Blacklist.Lines[a])).OnClick := chess4.onclick;
  end;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  // 唔用就釋放番
  Redlist.free;
  Blacklist.free;
  // AiMoveList.Free;
  movedlist.free;
end;

procedure TForm1.HumanFirstButtonClick(Sender: TObject);
begin
  HumanVsHumanButtonClick(nil);
  HumanVsComputer.Click;
end;

procedure TForm1.HumanVsHumanButtonClick(Sender: TObject);
var
  a, b: integer;
begin
  HumanvsHuman.Checked := True;
  HumanVsComputer.Checked := False;
  ComputerVsHuman.Checked := False;
  Redlist.clear;
  Blacklist.clear;
  StepListBox.items.clear;
  RedNoMove := False;
  BlackNoMove := False;
  BackButton.Checked := False;
  for a := 1 to 8 do
    for b := 1 to 8 do
    begin
      board[a][b] := 0;
      TImage(FindComponent('image' + inttostr(8 * a + b - 8))).picture := nil;
      TImage(FindComponent('image' + inttostr(8 * a + b - 8))).OnClick := nil;
    end;

  Image28.picture := RedChess.picture;
  Image29.picture := RedChess.picture;
  Image36.picture := RedChess.picture;
  Image37.picture := RedChess.picture;
  Image28.OnClick := RedChess.OnClick;
  Image29.OnClick := RedChess.OnClick;
  Image36.OnClick := RedChess.OnClick;
  Image37.OnClick := RedChess.OnClick;

  Redlist.Add('Image28');
  Redlist.Add('Image29');
  Redlist.Add('Image36');
  Redlist.Add('Image37');
  Label3.Caption := '0';
  Label4.Caption := '0';
end;

procedure TForm1.HumanvsHumanClick(Sender: TObject);
begin
  HumanVsComputer.Checked := False;
  ComputerVsHuman.Checked := False;
  HumanvsHuman.Checked := True;
end;

procedure TForm1.RuleButtonClick(Sender: TObject);
begin
  ShowMessage
    ('Rule:The player who has more pieces on the board when the game is finished, loses the game');
end;

procedure TForm1.Startposition1ButtonClick(Sender: TObject);
var
  a, b: integer;
begin
  // RedMove:=True;
  for a := 1 to 8 do
    for b := 1 to 8 do
      initboard[a][b] := 0;
  initboard[4][4] := -1;
  initboard[4][5] := 1;
  initboard[5][4] := 1;
  initboard[5][5] := -1;

  board := initboard;
  FirstIsRed := True;
  NotInBack := True;
  Redlist.clear;
  Blacklist.clear;
  movedlist.clear;
  RedNoMove := False;
  BlackNoMove := False;
  {
    Image28.picture := chess1.Picture;
    Image29.picture := chess2.Picture;
    Image36.picture := chess2.Picture;
    Image37.picture := chess1.Picture;
    Image20.picture := Redchess.picture;
    Image38.picture := Redchess.picture;
    Image27.picture := Redchess.picture;
    Image45.picture := Redchess.picture;
  }
  Image20.OnClick := RedChess.OnClick;
  Image38.OnClick := RedChess.OnClick;
  Image27.OnClick := RedChess.OnClick;
  Image45.OnClick := RedChess.OnClick;
  Redlist.Add('Image20');
  Redlist.Add('Image38');
  Redlist.Add('Image27');
  Redlist.Add('Image45');
  Label3.Caption := '2';
  Label4.Caption := '2';
  Updateboard;
end;

procedure TForm1.Startposition2ButtonClick(Sender: TObject);
var
  a, b: integer;
begin
  for a := 1 to 8 do
    for b := 1 to 8 do
      initboard[a][b] := 0;
  initboard[4][4] := -1;
  initboard[4][5] := -1;
  initboard[5][4] := 1;
  initboard[5][5] := 1;

  board := initboard;
  FirstIsRed := True;
  NotInBack := True;

  Redlist.clear;
  Blacklist.clear;
  movedlist.clear;
  RedNoMove := False;
  BlackNoMove := False;
  Image20.OnClick := RedChess.OnClick;
  Image38.OnClick := RedChess.OnClick;
  Image27.OnClick := RedChess.OnClick;
  Image45.OnClick := RedChess.OnClick;
  Redlist.Add('Image19');
  Redlist.Add('Image27');
  Redlist.Add('Image35');
  Redlist.Add('Image43');
  Label3.Caption := '2';
  Label4.Caption := '2';
  Updateboard;
end;

procedure TForm1.Startposition3ButtonClick(Sender: TObject);
var
  a, b: integer;
begin
  for a := 1 to 8 do
    for b := 1 to 8 do
      initboard[a][b] := 0;
  initboard[4][4] := 1;
  initboard[4][5] := -1;
  initboard[5][4] := -1;
  initboard[5][5] := 1;

  board := initboard;
  FirstIsRed := True;
  NotInBack := True;
  Redlist.clear;
  Blacklist.clear;
  movedlist.clear;
  RedNoMove := False;
  BlackNoMove := False;
  Image20.OnClick := RedChess.OnClick;
  Image38.OnClick := RedChess.OnClick;
  Image27.OnClick := RedChess.OnClick;
  Image45.OnClick := RedChess.OnClick;
  Redlist.Add('Image30');
  Redlist.Add('Image21');
  Redlist.Add('Image35');
  Redlist.Add('Image44');
  Label3.Caption := '2';
  Label4.Caption := '2';
  Updateboard;
end;

procedure TForm1.Startposition4ButtonClick(Sender: TObject);
var
  a, b: integer;
begin
  for a := 1 to 8 do
    for b := 1 to 8 do
      initboard[a][b] := 0;
  initboard[4][4] := 1;
  initboard[4][5] := 1;
  initboard[5][4] := -1;
  initboard[5][5] := -1;

  board := initboard;
  FirstIsRed := True;
  NotInBack := True;

  Redlist.clear;
  Blacklist.clear;
  movedlist.clear;
  RedNoMove := False;
  BlackNoMove := False;
  Image20.OnClick := RedChess.OnClick;
  Image38.OnClick := RedChess.OnClick;
  Image27.OnClick := RedChess.OnClick;
  Image45.OnClick := RedChess.OnClick;
  Redlist.Add('Image22');
  Redlist.Add('Image30');
  Redlist.Add('Image38');
  Redlist.Add('Image46');
  Label3.Caption := '2';
  Label4.Caption := '2';
  Updateboard;
end;

procedure TForm1.Startposition6uttonClick(Sender: TObject);
var
  a, b: integer;
begin
  for a := 1 to 8 do
    for b := 1 to 8 do
      initboard[a][b] := 0;
  initboard[4][4] := -1;
  initboard[4][5] := 1;
  initboard[5][4] := -1;
  initboard[5][5] := 1;

  board := initboard;
  FirstIsRed := True;
  NotInBack := True;

  Redlist.clear;
  Blacklist.clear;
  movedlist.clear;
  RedNoMove := False;
  BlackNoMove := False;
  Image20.OnClick := RedChess.OnClick;
  Image38.OnClick := RedChess.OnClick;
  Image27.OnClick := RedChess.OnClick;
  Image45.OnClick := RedChess.OnClick;
  Redlist.Add('Image19');
  Redlist.Add('Image20');
  Redlist.Add('Image21');
  Redlist.Add('Image22');
  Label3.Caption := '2';
  Label4.Caption := '2';
  Updateboard;
end;

procedure TForm1.StartpositionButtonClick(Sender: TObject);
var
  a, b: integer;
begin
  for a := 1 to 8 do
    for b := 1 to 8 do
      initboard[a][b] := 0;
  initboard[4][4] := 1;
  initboard[4][5] := -1;
  initboard[5][4] := 1;
  initboard[5][5] := -1;

  board := initboard;
  FirstIsRed := True;
  NotInBack := True;

  Redlist.clear;
  Blacklist.clear;
  movedlist.clear;
  RedNoMove := False;
  BlackNoMove := False;
  Image20.OnClick := RedChess.OnClick;
  Image38.OnClick := RedChess.OnClick;
  Image27.OnClick := RedChess.OnClick;
  Image45.OnClick := RedChess.OnClick;
  Redlist.Add('Image43');
  Redlist.Add('Image44');
  Redlist.Add('Image45');
  Redlist.Add('Image46');
  Label3.Caption := '2';
  Label4.Caption := '2';
  Updateboard;
end;

procedure TForm1.StopThinkButtonClick(Sender: TObject);
begin
  StopThink := True;
end;

procedure TForm1.BlackBoardUpdate(var ABoard: Tboard; LastChess: integer);
// update chess
var
  a, b, c, d: integer;
begin
  a := LastChess;
  c := a div 8 + 1;
  b := a mod 8;
  // if c = 0 then
  // Aboard[b-1][8] := -1

  if b = 0 then
  begin
    c := c - 1;
    b := 8;
  end;

  // else
  ABoard[b][c] := -1;
  // left

  if c > 2 then
  begin
    if (ABoard[b][c - 1] = 1) and (ABoard[b][c - 2] <> 0) then
    begin
      d := 1;
      while (ABoard[b][c - d] = 1) do
        inc(d);
      if ABoard[b][c - d] = -1 then
      begin
        for a := 1 to d - 1 do
          ABoard[b][c - a] := -1;
      end;
    end;
  end;



  // right test

  if c < 7 then
  begin
    if (ABoard[b][c + 1] = 1) and (ABoard[b][c + 2] <> 0) then
    begin
      d := 1;
      while (ABoard[b][c + d] = 1) do
        inc(d);
      if ABoard[b][c + d] = -1 then
      begin
        for a := 1 to d - 1 do
          ABoard[b][c + a] := -1;
      end;
    end;
  end;


  // top corrected test

  if b > 2 then
  begin
    if (ABoard[b - 1][c] = 1) and (ABoard[b - 2][c] <> 0) then
    begin
      d := 1;
      while (ABoard[b - d][c] = 1) do
        inc(d);
      if ABoard[b - d][c] = -1 then
      begin
        for a := 1 to d - 1 do
          ABoard[b - a][c] := -1;
      end;
    end;
  end;



  // bottom test

  if b < 7 then
  begin
    if (ABoard[b + 1][c] = 1) and (ABoard[b + 2][c] <> 0) then
    begin
      d := 1;
      while (ABoard[b + d][c] = 1) do
        inc(d);
      if ABoard[b + d][c] = -1 then
      begin
        for a := 1 to d - 1 do
          ABoard[b + a][c] := -1;
      end;
    end;
  end;



  // left top test

  if (b - 2 > 0) and (c - 2 > 0) then
  begin
    if (ABoard[b - 1][c - 1] = 1) and (ABoard[b - 2][c - 2] <> 0) then
    begin
      d := 1;
      while (ABoard[b - d][c - d] = 1) do
        inc(d);
      if ABoard[b - d][c - d] = -1 then
      begin
        for a := 1 to d - 1 do
          ABoard[b - a][c - a] := -1;
      end;
    end;
  end;


  // left bottom test

  if (b + 2 < 9) and (c - 2 > 0) then
  begin
    if (ABoard[b + 1][c - 1] = 1) and (ABoard[b + 2][c - 2] <> 0) then
    begin
      d := 1;
      while (ABoard[b + d][c - d] = 1) do
        inc(d);
      if ABoard[b + d][c - d] = -1 then
      begin
        for a := 1 to d - 1 do
          ABoard[b + a][c - a] := -1;
      end;
    end;
  end;


  // right bottom  test

  if (b + 2 < 9) and (c + 2 < 9) then
  begin
    if (ABoard[b + 1][c + 1] = 1) and (ABoard[b + 2][c + 2] <> 0) then
    begin
      d := 1;
      while (ABoard[b + d][c + d] = 1) do
        inc(d);
      if ABoard[b + d][c + d] = -1 then
      begin
        for a := 1 to d - 1 do
          ABoard[b + a][c + a] := -1;
      end;
    end;
  end;


  // right top fixed 2 nd

  if (b - 2 > 0) and (c + 2 < 9) then
  begin
    if (ABoard[b - 1][c + 1] = 1) and (ABoard[b - 2][c + 2] <> 0) then
    begin
      d := 1;
      while (ABoard[b - d][c + d] = 1) do
        inc(d);
      if ABoard[b - d][c + d] = -1 then
      begin
        for a := 1 to d - 1 do
          ABoard[b - a][c + a] := -1;
      end;
    end;
  end;
end;

procedure TForm1.BlackChessClick(Sender: TObject);
// update chess
var
  a, b, c: integer;
  templist: Tstringlist;
begin
  // clean the made move
  For a := 0 to Blacklist.count - 1 do
  begin
    // if TWinControl(FindComponent(Blacklist[a])) <> TWinControl(Sender) then
    // begin
    TImage(FindComponent(Blacklist[a])).picture := nil;
    TImage(FindComponent(Blacklist[a])).OnClick := nil;
    // end;
  end;
  // clean move
  TImage(Sender).picture := Chess1.picture;
  TImage(Sender).OnClick := nil;
  if NotInBack = True then
  begin
    c := movedlist.Add('Black');
    for a := 1 to 8 do
      for b := 1 to 8 do
        movedlist[c] := movedlist[c] + inttostr(board[a][b] + 1);
  end;

  a := strtoint(copy(TComponent(Sender).name, 6, 2));
  // tempfix
  b := a div 8 + 1;
  c := a mod 8;
  if c = 0 then
  begin
    b := b - 1;
    c := 8;
  end;
  // a := (c-1)*8 + b;
  board[c][b] := -1;
  if NotInBack = True then
  begin
    if c <> 0 then
      StepListBox.items.Add('Black ' + inttostr(c) + ',' + inttostr(b))
    else
      StepListBox.items.Add('Black 8,' + inttostr(b - 1));
  end;
  if StepListBox.items.count > 1 then
    BackButton.enabled := True;
  StepListBox.ItemIndex := StepListBox.items.count - 1;
  Redlist.clear;
  Blacklist.clear;
  Score(board, b, c);
  if b + c < 4 then
  begin
    Label3.Caption := inttostr(b);
    Label4.Caption := inttostr(c);
    Image28.OnClick := nil;
    Image29.OnClick := nil;
    Image36.OnClick := nil;
    Image37.OnClick := nil;
    templist := Tstringlist.Create;
    if board[4][4] = 0 then
    begin
      Image28.OnClick := RedChessClick;
      Image28.picture := RedChess.picture;
      Blacklist.Add('Image28');
      templist.Add('Image28');
    end;
    if board[5][4] = 0 then
    begin
      Image29.OnClick := RedChessClick;
      Image29.picture := RedChess.picture;
      Blacklist.Add('Image29');
      templist.Add('Image29');
    end;
    if board[4][5] = 0 then
    begin
      Image36.OnClick := RedChessClick;
      Image36.picture := RedChess.picture;
      Blacklist.Add('Image36');
      templist.Add('Image36');
    end;
    if board[5][5] = 0 then
    begin
      Image37.OnClick := RedChessClick;
      Image37.picture := RedChess.picture;
      Blacklist.Add('Image37');
      templist.Add('Image37');
    end;
    a := Random(templist.count);
    if ComputerVsHuman.Checked = True then
      RedChessClick(TImage(FindComponent(templist[a])));
    templist.free;
    exit;
  end;
  BlackBoardUpdate(board, a);
  Score(board, b, c);
  Label3.Caption := inttostr(b);
  Label4.Caption := inttostr(c);
  templist := Tstringlist.Create;
  MakeRedMove(board, templist);
  if templist.count > 0 then
  begin
    RedNoMove := False;
    BlackNoMove := False;
    MakeClick(templist, 'player1');
    Updateboard;
    // if ComputerVsHuman.Checked = true then
    if (HumanVsComputer.Checked = True) and (FirstIsRed = False) or
      (ComputerVsHuman.Checked = True) and (FirstIsRed = True) then
    begin
      Application.ProcessMessages;
      Sleep(2000);
      // RedChessclick(Timage(FindComponent(templist[0])));
      RedChessClick(TImage(FindComponent(AI(board, True))));
      // Updateboard;
    end;
  end
  else
  begin
    if NotInBack = False then
      exit;
    StepListBox.items.Add('Red pass');
    c := movedlist.Add('Red');
    for a := 1 to 8 do
      for b := 1 to 8 do
        movedlist[c] := movedlist[c] + inttostr(board[a][b] + 1);
    // may be correcteed
    if RedNoMove = True then
    begin
      Updateboard;
      Score(board, a, b);
      if a < b Then
        ShowMessage('Both no more move,finish game' + #13 + 'Red win')
      else if a > b then
        ShowMessage('Both no more move,finish game' + #13 + 'Black win')
      else if a = b then
        ShowMessage('Both no more move,finish game' + #13 + 'Draw');
    end
    else
    begin
      Updateboard;
      if a + b <> 64 then
        ShowMessage('Red pass');
      templist.clear;
      MakeBlackMove(board, templist);
      if templist.count > 0 then
      begin
        MakeClick(templist, 'player2');
        RedNoMove := False;
        BlackNoMove := False;
        Updateboard;

        if (HumanVsComputer.Checked = True) and (FirstIsRed = True) or
          (HumanvsHuman.Checked = False) and (HumanVsComputer.Checked = False)
          and (FirstIsRed = True) then
        begin
          Application.ProcessMessages;
          Sleep(2000);
          BlackChessClick(TImage(FindComponent(AI(board, False))));
        end;
      end
      else
      begin
        if NotInBack = True then
        begin
          StepListBox.items.Add('Black pass');
          c := movedlist.Add('Black');
          for a := 1 to 8 do
            for b := 1 to 8 do
              movedlist[c] := movedlist[c] + inttostr(board[a][b] + 1);
        end;
        Score(board, a, b);
        // corrected
        if a < b Then
          ShowMessage('Both no more move,finish game' + #13 + 'Red win')
        else if a > b then
          ShowMessage('Both no more move,finish game' + #13 + 'Black win')
        else if a = b then
          ShowMessage('Both no more move,finish game' + #13 + 'Draw');
      end;
    end;
  end;
  templist.free;
end;

procedure TForm1.ClosebuttonClick(Sender: TObject);
begin
  Form1.Close;
end;

procedure TForm1.SaveButtonClick(Sender: TObject);
var
  a, b: integer;
  c: string;
  f: textfile;
begin
  SaveDialog1.Filter := 'Apple game files (*.txt)|*.TXT';
  if SaveDialog1.Execute then
  begin
    assignfile(f, SaveDialog1.FileName);
    try
      Rewrite(f);
      Writeln(f, 'Anti Reversi 8x8');
      Writeln(f, 'Initboard');
      for b := 1 to 8 do
      begin
        c := '';
        for a := 1 to 8 do
          c := c + inttostr(initboard[a][b] + 1);
        Writeln(f, c);
      end;
      Writeln(f, 'Mode');
      if HumanVsComputer.Checked then
      begin
        c := extractfilename(SaveDialog1.FileName);
        Redlabel.Caption := copy(c, 1, length(c) - 4);
        // redlabel.Caption := extractfilename(savedialog1.FileName);
        BlackLabel.Caption := 'Computer';
        Writeln(f, 'HumanVSComputer');
      end
      else if ComputerVsHuman.Checked then
      begin
        c := extractfilename(SaveDialog1.FileName);
        BlackLabel.Caption := copy(c, 1, length(c) - 4);

        // blacklabel.Caption := extractfilename(savedialog1.FileName);
        Redlabel.Caption := 'Computer';
        Writeln(f, 'ComputerVSHuman');
      end
      else
      begin
        Redlabel.Caption := 'Computer';
        BlackLabel.Caption := 'Computer';
        Writeln(f, 'HumanVSHuman');
      end;
      if FirstIsRed = True then
        Writeln(f, 'Red first')
      else
        Writeln(f, 'Black first');
      for a := 0 to StepListBox.items.count - 1 do
        Writeln(f, StepListBox.items[a]);
    finally
      closefile(f);
    end;
  end;
end;

Function TForm1.BoardtoFen: String;
var
  x, y, t: integer;
begin
  // abc
  Result := '';
  for y := 1 to 8 do
  begin
    t := 0;
    for x := 1 to 8 do
    begin
      if initboard[x][y] = 0 then
        inc(t)
      else if initboard[x][y] = -1 then
      begin
        if t <> 0 then
          Result := Result + inttostr(t) + 'B'
        else
          Result := Result + 'B';
        t := 0;
      end
      else if initboard[x][y] = 1 then
      begin
        if t <> 0 then
          Result := Result + inttostr(t) + 'R'
        else
          Result := Result + 'R';
        t := 0;
      end;
    end;
    if y <> 8 then
    begin
      if t = 0 then
        Result := Result + '/'
      else
        Result := Result + inttostr(t) + '/';
    end
    else
    begin
      if t <> 0 then
        Result := Result + inttostr(t);
    end;

  end;

end;

procedure TForm1.CopyToClipboardButtonClick(Sender: TObject);
begin
  Clipboard.AsText := StepListBox.items.text;
end;

procedure TForm1.ChessRadioGroupClick(Sender: TObject);
var
  a, b: integer;
begin
  if ChessRadioGroup.ItemIndex = 0 then
  begin
    for a := 1 to 8 do
    begin
      for b := 1 to 8 do
        TImage(FindComponent('image' + inttostr(8 * a + b - 8))).OnClick :=
          Chess2Click;
    end;
  end
  else if ChessRadioGroup.ItemIndex = 1 then
  begin
    for a := 1 to 8 do
    begin
      for b := 1 to 8 do
        TImage(FindComponent('image' + inttostr(8 * a + b - 8))).OnClick :=
          Chess1Click;
    end;
  end
  else if ChessRadioGroup.ItemIndex = 2 then
  begin
    for a := 1 to 8 do
    begin
      for b := 1 to 8 do
        TImage(FindComponent('image' + inttostr(8 * a + b - 8))).OnClick :=
          Deletechess;
    end;
  end;
end;

procedure TForm1.Deletechess(Sender: TObject);
begin
  TImage(Sender).picture := nil;
  TImage(Sender).Tag := 0;
end;

procedure TForm1.Chess2Click(Sender: TObject);
begin
  TImage(Sender).picture := Chess2.picture;
  TImage(Sender).Tag := 1;
end;

procedure TForm1.ComputerVsHumanClick(Sender: TObject);
VAR
  b, c: integer;
  templist: Tstringlist;
begin
  HumanVsComputer.Checked := False;
  ComputerVsHuman.Checked := True;
  HumanvsHuman.Checked := False;
  if FirstIsRed then
  begin
    if StepListBox.items.count = 0 then
      StepListBox.items.Add('temp');
    if (StepListBox.items[StepListBox.count - 1] = 'temp') or
      (copy(StepListBox.items[StepListBox.items.count - 1], 1, 5) = 'Black')
    then
    begin
      if StepListBox.items[StepListBox.count - 1] = 'temp' then
        StepListBox.clear;
      RedNoMove := False;
      BlackNoMove := False;
      Score(board, b, c);
      if b + c > 3 then
      begin
        RedChessClick(TImage(FindComponent(AI(board, True))));
        Updateboard;
      end
      else
      begin
        Image28.OnClick := nil;
        Image29.OnClick := nil;
        Image36.OnClick := nil;
        Image37.OnClick := nil;
        templist := Tstringlist.Create;
        if board[4][4] = 0 then
        begin
          Image28.OnClick := RedChessClick;
          Image28.picture := RedChess.picture;
          Redlist.Add('Image28');
          templist.Add('Image28');
        end;
        if board[5][4] = 0 then
        begin
          Image29.OnClick := RedChessClick;
          Image29.picture := RedChess.picture;
          Redlist.Add('Image29');
          templist.Add('Image29');
        end;
        if board[4][5] = 0 then
        begin
          Image36.OnClick := RedChessClick;
          Image36.picture := RedChess.picture;
          Redlist.Add('Image36');
          templist.Add('Image36');
        end;
        if board[5][5] = 0 then
        begin
          Image37.OnClick := RedChessClick;
          Image37.picture := RedChess.picture;
          Redlist.Add('Image37');
          templist.Add('Image37');
        end;
        b := Random(templist.count);
        if ComputerVsHuman.Checked = True then
          RedChessClick(TImage(FindComponent(templist[b])));
        templist.free;
        exit;
      end;
    end;
  end

  else
  begin
    if (StepListBox.items.count = 0) or
      (copy(StepListBox.items[StepListBox.items.count - 1], 1, 5) = 'Black')
    then
    begin
      RedNoMove := False;
      BlackNoMove := False;
      Score(board, b, c);
      if b + c > 4 then
      begin
        BlackChessClick(TImage(FindComponent(AI(board, False))));
        Updateboard;
      end
      else
      begin
        Image28.OnClick := nil;
        Image29.OnClick := nil;
        Image36.OnClick := nil;
        Image37.OnClick := nil;
        templist := Tstringlist.Create;
        if board[4][4] = 0 then
        begin
          Image28.OnClick := BlackChessClick;
          Image28.picture := BlackChess.picture;
          Blacklist.Add('Image28');
          templist.Add('Image28');
        end;
        if board[5][4] = 0 then
        begin
          Image29.OnClick := BlackChessClick;
          Image29.picture := BlackChess.picture;
          Blacklist.Add('Image29');
          templist.Add('Image29');
        end;
        if board[4][5] = 0 then
        begin
          Image36.OnClick := BlackChessClick;
          Image36.picture := BlackChess.picture;
          Blacklist.Add('Image36');
          templist.Add('Image36');
        end;
        if board[5][5] = 0 then
        begin
          Image37.OnClick := BlackChessClick;
          Image37.picture := BlackChess.picture;
          Blacklist.Add('Image37');
          templist.Add('Image37');
        end;
        b := Random(templist.count);
        if ComputerVsHuman.Checked = True then
          BlackChessClick(TImage(FindComponent(templist[b])));
        templist.free;
        exit;
      end;
    end;
  end;

end;

procedure TForm1.HumanVsComputerClick(Sender: TObject);
var
  b, c: integer;
  templist: Tstringlist;
begin
  HumanVsComputer.Checked := True;
  ComputerVsHuman.Checked := False;
  HumanvsHuman.Checked := False;
  if FirstIsRed then
  begin
    if (StepListBox.items.count = 0) Then
      exit;
    if copy(StepListBox.items[StepListBox.items.count - 1], 1, 3) = 'Red' then
    begin
      RedNoMove := False;
      BlackNoMove := False;
      Score(board, b, c);
      if b + c > 4 then
      begin
        BlackChessClick(TImage(FindComponent(AI(board, False))));
        Updateboard;
      end
      else
      begin
        Image28.OnClick := nil;
        Image29.OnClick := nil;
        Image36.OnClick := nil;
        Image37.OnClick := nil;
        templist := Tstringlist.Create;
        if board[4][4] = 0 then
        begin
          Image28.OnClick := BlackChessClick;
          Image28.picture := BlackChess.picture;
          Blacklist.Add('Image28');
          templist.Add('Image28');
        end;
        if board[5][4] = 0 then
        begin
          Image29.OnClick := BlackChessClick;
          Image29.picture := BlackChess.picture;
          Blacklist.Add('Image29');
          templist.Add('Image29');
        end;
        if board[4][5] = 0 then
        begin
          Image36.OnClick := BlackChessClick;
          Image36.picture := BlackChess.picture;
          Blacklist.Add('Image36');
          templist.Add('Image36');
        end;
        if board[5][5] = 0 then
        begin
          Image37.OnClick := BlackChessClick;
          Image37.picture := BlackChess.picture;
          Blacklist.Add('Image37');
          templist.Add('Image37');
        end;
        b := Random(templist.count);
        if HumanVsComputer.Checked = True then
          BlackChessClick(TImage(FindComponent(templist[b])));
        templist.free;
        exit;
      end;
    end

    else
    begin
      if (StepListBox.items.count = 0) Then
        exit;
      if copy(StepListBox.items[StepListBox.items.count - 1], 1, 3) = 'Red' then
      begin
        RedNoMove := False;
        BlackNoMove := False;
        Score(board, b, c);
        if b + c > 4 then
        begin
          RedChessClick(TImage(FindComponent(AI(board, True))));
          Updateboard;
        end
        else
        begin
          Image28.OnClick := nil;
          Image29.OnClick := nil;
          Image36.OnClick := nil;
          Image37.OnClick := nil;
          templist := Tstringlist.Create;
          if board[4][4] = 0 then
          begin
            Image28.OnClick := RedChessClick;
            Image28.picture := RedChess.picture;
            Redlist.Add('Image28');
            templist.Add('Image28');
          end;
          if board[5][4] = 0 then
          begin
            Image29.OnClick := RedChessClick;
            Image29.picture := RedChess.picture;
            Redlist.Add('Image29');
            templist.Add('Image29');
          end;
          if board[4][5] = 0 then
          begin
            Image36.OnClick := RedChessClick;
            Image36.picture := RedChess.picture;
            Redlist.Add('Image36');
            templist.Add('Image36');
          end;
          if board[5][5] = 0 then
          begin
            Image37.OnClick := RedChessClick;
            Image37.picture := RedChess.picture;
            Redlist.Add('Image37');
            templist.Add('Image37');
          end;
          b := Random(templist.count);
          if HumanVsComputer.Checked = True then
            RedChessClick(TImage(FindComponent(templist[b])));
          templist.free;
          exit;
        end;
      end;
    end;

  end;

end;

procedure TForm1.Chess1Click(Sender: TObject);
begin
  TImage(Sender).picture := Chess1.picture;
  TImage(Sender).Tag := -1;
end;

procedure TForm1.SetupBoardClick(Sender: TObject);
var
  a, b: integer;
begin
  Form1.Tag := 0;
  Restartbutton.enabled := False;
  if BackButton.enabled = True then
  begin
    BackButton.enabled := False;
    Form1.Tag := 1;
  end;
  SaveButton.enabled := False;
  LoadButton.enabled := False;
  ChessRadioGroup.Show;
  ClearButton.Show;
  MoveFirstRadioGroup.Show;
  SetupBoard.enabled := False;
  FinishSetupboard.enabled := True;
  CancelSetupBoard.enabled := True;
  if Redlist.count > 0 then
  begin
    for a := 0 to Redlist.count - 1 do
      TImage(FindComponent(Redlist[a])).picture := nil;
  end
  else if Blacklist.count > 0 then
  begin
    for a := 0 to Blacklist.count - 1 do
      TImage(FindComponent(Blacklist[a])).picture := nil;
  end;
  For a := 1 to 8 do
  begin
    for b := 1 to 8 do
      TImage(FindComponent('image' + inttostr(8 * b + a - 8))).Tag :=
        board[a][b];
  end;

  if StepListBox.items.count = 0 then
  begin
    if FirstIsRed = True then
      StepListBox.items.Add('Black123')
    else
      StepListBox.items.Add('Red123');
  end;

  if copy(StepListBox.items[StepListBox.items.count - 1], 1, 3) = 'Red' then
  begin
    if StepListBox.items[StepListBox.items.count - 1] = 'Red123' then
      StepListBox.items.Delete(StepListBox.items.count - 1);
    MoveFirstRadioGroup.ItemIndex := 1;
  end
  else
  begin
    if StepListBox.items[StepListBox.items.count - 1] = 'Black123' then
      StepListBox.items.Delete(StepListBox.items.count - 1);
    MoveFirstRadioGroup.ItemIndex := 0;
  end;
  ChessRadioGroupClick(self);
end;

procedure TForm1.FinishSetupboardClick(Sender: TObject);
var
  a, b: integer;
  templist: Tstringlist;
begin
  Form1.Tag := 0;
  templist := Tstringlist.Create;
  Restartbutton.enabled := True;
  SaveButton.enabled := True;
  LoadButton.enabled := True;
  StepListBox.items.clear;
  RedNoMove := False;
  BlackNoMove := False;
  HumanvsHuman.Checked := True;
  SetupBoard.enabled := True;
  CancelSetupBoard.enabled := False;
  FinishSetupboard.enabled := False;
  MoveFirstRadioGroup.Hide;
  ChessRadioGroup.Hide;
  ClearButton.Hide;
  Redlist.clear;
  Blacklist.clear;
  BackButton.enabled := False;
  For a := 1 to 8 do
  begin
    For b := 1 to 8 do
    begin
      initboard[a][b] :=
        TImage(FindComponent('image' + inttostr(8 * b + a - 8))).Tag;
      TImage(FindComponent('image' + inttostr(8 * b + a - 8))).Tag := 0;
    end;
  end;
  board := initboard;
  if MoveFirstRadioGroup.ItemIndex = 0 then
  begin
    FirstIsRed := True;
    MakeRedMove(board, templist);
    if templist.count > 0 then
    begin
      MakeClick(templist, 'player1');
      Updateboard;
      Score(board, a, b);
      Label3.Caption := inttostr(a);
      Label4.Caption := inttostr(b);
    end
    else
    begin
      ShowMessage('Red no move');
      StepListBox.items.Add('Red pass');
      RedNoMove := True;
      MakeBlackMove(board, templist);
      if templist.count > 0 then
      begin
        MakeClick(templist, 'player2');
        Updateboard;
        Score(board, a, b);
        Label3.Caption := inttostr(a);
        Label4.Caption := inttostr(b);
      end
      else
      begin
        Score(board, a, b);
        StepListBox.items.Add('Black pass');
        if a > b Then
          ShowMessage('Both no more move,finish game' + #13 + 'Black win')
        else if a < b then
          ShowMessage('Both no more move,finish game' + #13 + 'Red win')
        else if a = b then
          ShowMessage('Both no more move,finish game' + #13 + 'Draw');
      end;
    end;
  end
  else if MoveFirstRadioGroup.ItemIndex = 1 then
  begin
    FirstIsRed := False;
    MakeBlackMove(board, templist);
    if templist.count > 0 then
    begin
      MakeClick(templist, 'player2');
      Updateboard;
      Score(board, a, b);
      Label3.Caption := inttostr(a);
      Label4.Caption := inttostr(b);
    end
    else
    begin
      ShowMessage('Back no move');
      StepListBox.items.Add('Black pass');
      BlackNoMove := True;
      MakeRedMove(board, templist);
      if templist.count > 0 then
      begin
        MakeClick(templist, 'player1');
        Updateboard;
        Score(board, a, b);
        Label3.Caption := inttostr(a);
        Label4.Caption := inttostr(b);
      end
      else
      begin
        ShowMessage('Red no move');
        StepListBox.items.Add('Red pass');
        Score(board, a, b);
        if a > b Then
          ShowMessage('Both no more move,finish game' + #13 + 'Black win')
        else if a < b then
          ShowMessage('Both no more move,finish game' + #13 + 'Red win')
        else if a = b then
          ShowMessage('Both no more move,finish game' + #13 + 'Draw');
      end;
    end;
  end;
  templist.free;
end;

procedure TForm1.CancelSetupBoardClick(Sender: TObject);
var
  a, b: integer;
  templist: Tstringlist;
begin
  if Form1.Tag = 1 then
  begin
    BackButton.enabled := True;
    Form1.Tag := 0;
  end;
  For a := 1 to 8 do
  begin
    for b := 1 to 8 do
    begin
      board[a][b] :=
        TImage(FindComponent('image' + inttostr(8 * b + a - 8))).Tag;
      TImage(FindComponent('image' + inttostr(8 * b + a - 8))).Tag := 0;
    end;
  end;
  HumanvsHuman.Checked := True;
  SetupBoard.enabled := True;
  Restartbutton.enabled := True;
  CancelSetupBoard.enabled := False;
  FinishSetupboard.enabled := False;
  SaveButton.enabled := True;
  LoadButton.enabled := True;
  MoveFirstRadioGroup.Hide;
  ChessRadioGroup.Hide;
  ClearButton.Hide;
  templist := Tstringlist.Create;
  if StepListBox.items.count = 0 then
  begin
    if FirstIsRed = True then
      StepListBox.items.Add('Black123')
    else
      StepListBox.items.Add('Red123');
  end;

  if copy(StepListBox.items[StepListBox.items.count - 1], 1, 3) = 'Red' then
  begin
    if StepListBox.items[StepListBox.items.count - 1] = 'Red123' then
      StepListBox.items.Delete(StepListBox.items.count - 1);
    MakeBlackMove(board, templist);
    MakeClick(templist, 'player2');
  end
  else
  begin
    if StepListBox.items[StepListBox.items.count - 1] = 'Black123' then
      StepListBox.items.Delete(StepListBox.items.count - 1);
    MakeRedMove(board, templist);
    MakeClick(templist, 'player1');

  end;
  templist.free;
  Updateboard;
end;

procedure TForm1.LoadButtonClick(Sender: TObject);
var
  a, h: string;
  b, c, d, e: integer;
  f: textfile;
  templist: Tstringlist;
begin
  if OpenDialog1.Execute then
  begin
    assignfile(f, OpenDialog1.FileName);
    // try
    Reset(f);
    readln(f, a);
    if a <> 'Anti Reversi 8x8' then
    begin
      closefile(f);
      ShowMessage('Wrong file');
      exit;
    end;
    readln(f, a);
    Blacklist.clear;
    Redlist.clear;
    for b := 1 to 8 do
    begin
      readln(f, a);
      for c := 1 to 8 do
        initboard[c][b] := strtoint(copy(a, c, 1)) - 1; // need test
    end;
    readln(f, a);
    readln(f, h);
    readln(f, a);
    if a = 'Red first' then
      FirstIsRed := True
    else
      FirstIsRed := False;
    movedlist.clear;
    StepListBox.items.clear;

    // readln(f,a);//need change
    while not eof(f) do
    begin
      readln(f, a);
      StepListBox.items.Add(a);
      // need add ?
    end;
    closefile(f);
    board := initboard;
    NotInBack := False;
    Redlist.clear;
    Blacklist.clear;
    HumanvsHuman.Checked := True;
    ComputerVsHuman.Checked := False;
    HumanVsComputer.Checked := False;
    templist := Tstringlist.Create;
    for b := 0 to StepListBox.items.count - 1 do
    begin
      if copy(StepListBox.items[b], 1, 3) = 'Red' then
      begin
        if copy(StepListBox.items[b], 5, 1) <> 'p' then // p for pass
        begin
          e := movedlist.Add('Red');
          for c := 1 to 8 do
            for d := 1 to 8 do
              movedlist[e] := movedlist[e] + inttostr(board[c][d] + 1);
          c := strtoint(copy(StepListBox.items[b], 5, 1));
          d := strtoint(copy(StepListBox.items[b], 7, 1));
          MakeRedMove(board, templist);
          MakeClick(templist, 'player1');
          RedChessClick
            (TImage(FindComponent('image' + inttostr(8 * d + c - 8))));
          // redlist.Clear;
          // blacklist.Clear;
          // updateboard;
        end
        else
        begin
          e := movedlist.Add('Redpass');
          for c := 1 to 8 do
            for d := 1 to 8 do
              movedlist[e] := movedlist[e] + inttostr(board[c][d] + 1);
        end;
      end
      else if copy(StepListBox.items[b], 1, 5) = 'Black' then
      begin
        if copy(StepListBox.items[b], 7, 1) <> 'p' then // p for pass
        begin
          e := movedlist.Add('Black');
          for c := 1 to 8 do
            for d := 1 to 8 do
              movedlist[e] := movedlist[e] + inttostr(board[c][d] + 1);

          c := strtoint(copy(StepListBox.items[b], 7, 1));
          d := strtoint(copy(StepListBox.items[b], 9, 1));
          MakeRedMove(board, templist);
          MakeClick(templist, 'player1');
          BlackChessClick
            (TImage(FindComponent('image' + inttostr(8 * d + c - 8))));
        end
        else
        begin
          e := movedlist.Add('Blackpass');
          for c := 1 to 8 do
            for d := 1 to 8 do
              movedlist[e] := movedlist[e] + inttostr(board[c][d] + 1);
        end;
      end;
    end;

    SaveDialog1.FileName := OpenDialog1.FileName;
    NotInBack := True;
    if StepListBox.items.count = 0 then
    begin
      if FirstIsRed = True then
      begin
        MakeRedMove(board, templist);
        MakeClick(templist, 'player1');
      end
      else
      begin
        MakeBlackMove(board, templist);
        MakeClick(templist, 'player2');
      end;
    end;
    Score(board, b, c);
    Label3.Caption := inttostr(b);
    Label4.Caption := inttostr(c);
    if StepListBox.items.count < 2 then
      BackButton.enabled := False;
    NotInBack := True;
    if h = 'HumanVSComputer' then
    begin
      HumanVsComputer.Click;
      h := extractfilename(OpenDialog1.FileName);
      Redlabel.Caption := copy(h, 1, length(h) - 4);
      BlackLabel.Caption := 'Human';
    end
    else if h = 'ComputerVSHuman' then
    begin
      ComputerVsHuman.Click;
      h := extractfilename(OpenDialog1.FileName);
      BlackLabel.Caption := copy(h, 1, length(h) - 4);
      Redlabel.Caption := 'Human';
    end
    else
    begin
      Redlabel.Caption := 'Human';
      BlackLabel.Caption := 'Human';
    end;
    Updateboard;
    templist.free;
  end;
end;

procedure TForm1.ClearButtonClick(Sender: TObject);
var
  a, b: integer;
begin
  for a := 1 to 8 do
  begin
    for b := 1 to 8 do
    begin
      TImage(FindComponent('image' + inttostr(8 * a + b - 8))).picture := nil;
      TImage(FindComponent('image' + inttostr(8 * a + b - 8))).Tag := 0;
    end;
  end;

end;

procedure TForm1.BackButtonClick(Sender: TObject);
var
  a, b, c: integer;
  templist: Tstringlist;
begin
  templist := Tstringlist.Create;
  While True do
  begin
    // d:=True;
    a := movedlist.count - 1;

    if (copy(movedlist[a], 1, 7) = 'Redpass') and
      (copy(movedlist[a - 1], 1, 9) <> 'Blackpass') then
      break;
    if (copy(movedlist[a], 1, 9) = 'Blackpass') and
      (copy(movedlist[a - 1], 1, 7) <> 'Redpass') then
      break;
    if a < 2 then
      break;
    if (copy(movedlist[a], 1, 7) <> 'Redpass') and
      (copy(movedlist[a], 1, 9) <> 'Blackpass') and
      (copy(movedlist[a - 2], 1, 7) <> 'Redpass') and
      (copy(movedlist[a - 2], 1, 9) <> 'Blackpass') Then
      break;
    movedlist.Delete(movedlist.count - 1);
    // movedlist.Delete(movedlist.Count-1);
    // StepListBox.items.Delete(StepListBox.count-1);
    StepListBox.items.Delete(StepListBox.count - 1);
  end;
  a := movedlist.count - 2;
  if a > -1 then
  begin
    movedlist.Delete(movedlist.count - 1);
    StepListBox.items.Delete(StepListBox.count - 1);
  end;
  if (StepListBox.items[StepListBox.count - 1] = 'Red pass') or
    (StepListBox.items[StepListBox.count - 3] = 'Black pass') then
  begin
    StepListBox.items.Delete(StepListBox.count - 1);
    StepListBox.items.Delete(StepListBox.count - 1);
    movedlist.Delete(movedlist.count - 1);
    movedlist.Delete(movedlist.count - 1);
  end;
  StepListBox.items.Delete(StepListBox.count - 1);
  Redlist.clear;
  Blacklist.clear;
  if movedlist.count > 0 Then
  begin
    if copy(movedlist[movedlist.count - 1], 1, 3) = 'Red' Then
      a := 3 // 4
    else
      a := 5; // 6
    for b := 1 to 8 do
      for c := 1 to 8 do
        board[b][c] := strtoint(copy(movedlist[movedlist.count - 1],
          8 * b - 8 + a + c, 1)) - 1;
    if copy(movedlist[movedlist.count - 1], 1, 3) = 'Red' then
    begin
      MakeRedMove(board, templist);
      MakeClick(templist, 'player1');
    end
    else
    begin
      MakeBlackMove(board, templist);
      MakeClick(templist, 'player2');
    end;
  end
  else
  begin
    board := initboard;
    if FirstIsRed then
    begin
      MakeRedMove(board, templist);
      MakeClick(templist, 'player1');
    end
    else
    begin
      MakeBlackMove(board, templist);
      MakeClick(templist, 'player2');
    end;
  end;
  movedlist.Delete(movedlist.count - 1);
  if StepListBox.items.count < 2 then
    BackButton.enabled := False;
  Score(board, a, b);
  Label3.Caption := inttostr(a);
  Label4.Caption := inttostr(b);
  NotInBack := True;
  Updateboard;
  templist.free;
end;

function TForm1.MinMaxRandom(ABoard: Tboard; SideIsRed: Boolean; depth: integer;
var aithinkstep: string): integer;
var
  a, b, c, d, bestvalue, value: integer;
  templist: Tstringlist;
  tempboard: Tboard;
  oldaithinkstep: string;
  aithinksteplist: Tstringlist;
  // var a,b,c,bestvalue, value:integer;templist:tstringlist;tempboard:Tboard;sameboard:boolean;
begin
  // 一般來說，這裡有一個判斷棋局是否結束的函數，
  // 一旦棋局結束就不必繼續搜索了，直接返回極值。
  // 但由於黑白棋不存在中途結束的情況，故省略。
  Application.ProcessMessages;
  // bestaithinkstep:=aithinkstep;
  Score(ABoard, a, b);
  if a = 0 then
  begin
    if SideIsRed then
      Result := 2000
    else
      Result := -2000;
    exit;
  end;
  if b = 0 then
  begin
    if SideIsRed then
      Result := -2000
    else
      Result := 2000;
    exit;
  end;
  if (depth <= 0) or (a + b > 63) then // 葉子節點
  begin
    Result := EvaluateScore(ABoard, SideIsRed); // 直接返回對局面的估值
    exit;
  end;
  templist := Tstringlist.Create;
  // if SideIsRed then
  bestvalue := -inf; // 初始最佳值設為負無窮
  // else
  // bestvalue:=INF;
  // 生成走法
  // templist:=tstringlist.Create;
  if SideIsRed Then
    // templist:=MakeRedMoveAI(Aboard)
    MakeRedMove(ABoard, templist)
  else
    // templist:=MakeBlackMoveAI(Aboard);
    MakeBlackMove(ABoard, templist);
  if templist.count = 0 then
  begin
    if SideIsRed Then
      MakeBlackMove(ABoard, templist)
    else
      MakeRedMove(ABoard, templist);

    if templist.count = 0 then // both red and black no move
    begin
      templist.free;
      // result:=0;
      Result := EvaluateScore(ABoard, SideIsRed); // 直接返回對局面的估值
      exit;
    end;
    Result := -MinMax(ABoard, Not SideIsRed, depth, aithinkstep);
    // );//搜索子節點，注意前面的負號
    // if a+ b < 40 then
    // result := result + 100;
    templist.free;
    exit;
  end;
  aithinksteplist := Tstringlist.Create;
  tempboard := ABoard;
  oldaithinkstep := aithinkstep;
  For a := 0 to templist.count - 1 do
  begin
    Application.ProcessMessages;
    aithinkstep := oldaithinkstep;
    d := strtoint(templist[a]);
    b := d div 8 + 1;
    c := d mod 8;
    if c = 0 then
    begin
      b := b - 1;
      c := 8;
    end;
    aithinkstep := inttostr(c) + ',' + inttostr(b);
    // 走一步棋;//
    // 局面aboard 隨之改變
    ABoard := tempboard;
    if SideIsRed Then
      RedBoardUpdate(ABoard, strtoint(templist[a]))
    else
      BlackBoardUpdate(ABoard, strtoint(templist[a]));
    value := -MinMax(ABoard, Not SideIsRed, depth - 1, aithinkstep);
    // );//搜索子節點，注意前面的負號

    // if depth = Realdepth-1 then
    // ProgressBar1.StepIt;

    // if depth = Realdepth then
    // begin
    d := strtoint(templist[a]);
    b := d div 8 + 1;
    c := d mod 8;
    if c = 0 then
    begin
      b := b - 1;
      c := 8;
    end;
    AiListBox.items.Add(inttostr(value) + ':' + aithinkstep);
    if value = bestvalue then
      aithinksteplist.Add(aithinkstep)
    else if value > bestvalue then
    begin
      AiMovelist := templist[a] + ' ' + inttostr(value);
      // end;
      // if value > bestvalue then
      // begin
      bestvalue := value;
      // bestaithinkstep := aithinkstep;
      aithinksteplist.clear;
      aithinksteplist.Add(aithinkstep)
    end;
  end;
  b := Random(aithinksteplist.count);
  AiMovelist := inttostr(8 * strtoint(copy(aithinksteplist[b], 3, 1)) +
    strtoint(copy(aithinksteplist[b], 1, 1)) - 8) + ' ' + inttostr(bestvalue);
  aithinkstep := aithinksteplist[b];
  templist.free;
  // aithinkstep :=bestaithinkstep;
  Result := bestvalue;
  aithinksteplist.free;
end;

function TForm1.MinMax(ABoard: Tboard; SideIsRed: Boolean; depth: integer;
var aithinkstep: string): integer;
var
  a, b, c, d, bestvalue, value: integer;
  templist: Tstringlist;
  tempboard: Tboard;
  oldaithinkstep, bestaithinkstep: string;
  // var a,b,c,bestvalue, value:integer;templist:tstringlist;tempboard:Tboard;sameboard:boolean;
begin
  // 一般來說，這裡有一個判斷棋局是否結束的函數，
  // 一旦棋局結束就不必繼續搜索了，直接返回極值。
  // 但由於黑白棋不存在中途結束的情況，故省略。
  Application.ProcessMessages;
  bestaithinkstep := aithinkstep;
  Score(ABoard, a, b);
  if a = 0 then
  begin
    if SideIsRed then
      Result := 2000
    else
      Result := -2000;
    exit;
  end;
  if b = 0 then
  begin
    if SideIsRed then
      Result := -2000
    else
      Result := 2000;
    exit;
  end;
  if (depth <= 0) or (a + b > 63) or StopThink then // 葉子節點
  begin
    Result := EvaluateScore(ABoard, SideIsRed); // 直接返回對局面的估值
    exit;
  end;
  templist := Tstringlist.Create;
  // if SideIsRed then
  bestvalue := -inf; // 初始最佳值設為負無窮
  // else
  // bestvalue:=INF;
  // 生成走法
  // templist:=tstringlist.Create;
  if SideIsRed Then
    // templist:=MakeRedMoveAI(Aboard)
    MakeRedMove(ABoard, templist)
  else
    // templist:=MakeBlackMoveAI(Aboard);
    MakeBlackMove(ABoard, templist);
  if templist.count = 0 then
  begin
    if SideIsRed Then
      MakeBlackMove(ABoard, templist)
    else
      MakeRedMove(ABoard, templist);
    if templist.count = 0 then // both red and black no move
    begin
      templist.free;
      // result:=0;
      Result := EvaluateScore(ABoard, SideIsRed); // 直接返回對局面的估值
      exit;
    end;
    aithinkstep := aithinkstep + '->PASS';
    Result := -MinMax(ABoard, Not SideIsRed, depth, aithinkstep);
    // );//搜索子節點，注意前面的負號
    // if a+ b < 40 then
    // result := result + 100;
    templist.free;
    exit;
  end;
  tempboard := ABoard;
  oldaithinkstep := aithinkstep;
  For a := 0 to templist.count - 1 do
  begin
    Application.ProcessMessages;
    aithinkstep := oldaithinkstep;
    d := strtoint(templist[a]);
    b := d div 8 + 1;
    c := d mod 8;
    if c = 0 then
    begin
      b := b - 1;
      c := 8;
    end;
    aithinkstep := aithinkstep + '->' + inttostr(c) + ',' + inttostr(b);
    // 走一步棋;//
    // 局面aboard 隨之改變
    ABoard := tempboard;
    if SideIsRed Then
      RedBoardUpdate(ABoard, strtoint(templist[a]))
    else
      BlackBoardUpdate(ABoard, strtoint(templist[a]));
    value := -MinMax(ABoard, Not SideIsRed, depth - 1, aithinkstep);
    // );//搜索子節點，注意前面的負號

    if depth = RealDepth - 1 then
      ProgressBar1.StepIt;
    if value > bestvalue then
    begin
      bestvalue := value;
      bestaithinkstep := aithinkstep;
    end;
  end;
  templist.free;
  aithinkstep := bestaithinkstep;
  Result := bestvalue;
end;

function TForm1.AI(ABoard: Tboard; ComputerisRed: Boolean): string;
var
  a, b, c: integer;
  thinkstep: string;
begin
  AiListBox.clear;
  thinkstep := '';
  Application.ProcessMessages;
  Score(board, a, b);
  if (a + b < 64) and (System.CPUCount > 1) then
  begin
    Result := Muti(ComputerisRed);
    exit;
  end;
  StopThinkButton.enabled := True;
  // http://blog.csdn.net/nowcan/archive/2004/10/19/142994.aspx
  // 其實所有戰術都是減低對方行動力,最後逼對方行死位.
  {
    if ComputerIsRed = true then
    MakeRedMove(Aboard,templist)
    else begin
    MakeBlackMove(Aboard,templist);
    end;
  }
  AiMovelist := '';
  // aimovelist only output next move and score
  Score(ABoard, a, b);
  RealDepth := strtoint(EndgameDepth.text);
  if a + b + RealDepth > 64 then
    RealDepth := 64 - a - b
  else
    RealDepth := strtoint(NornalDepth.text);
  ProgressBar1.Max := 0;
  ProgressBar1.Max := ThinkNumber(ABoard, ComputerisRed, RealDepth);
  ProgressBar1.Step := 1;
  if ComputerisRed = True then
  begin
    MakeRedMove(ABoard, Redlist);
    c := Redlist.count;
  end
  else
  begin
    MakeBlackMove(ABoard, Blacklist);
    c := Blacklist.count;
  end;

  if (a + b < 46) and (c > 4) and (RealDepth > 5) then
    a := MinMaxStart(ABoard, ComputerisRed, RealDepth, thinkstep)
  else

    a := MinMaxRandom(ABoard, ComputerisRed, RealDepth, thinkstep);
  if ProgressBar1.Position < ProgressBar1.Max then
    ProgressBar1.Position := ProgressBar1.Max;
  if copy(thinkstep, 1, 1) = '-' then
    thinkstep := copy(thinkstep, 3, length(thinkstep) - 2);
  Redlist.clear;
  Blacklist.clear;
  ThinkstepEdit.text := thinkstep;
  AIDisplayScoreLabel.Caption := inttostr(a);

  a := strtoint(trim(copy(AiMovelist, 1, 2)));
  Result := 'image' + inttostr(a);
  StopThinkButton.enabled := False;
  StopThink := False;
end;

Procedure TForm1.Scoresort(var scorelist: Tstringlist; var stepno: Tstringlist);
var
  a, b: string;
  c, d: integer;
begin
  for d := 1 to stepno.count - 1 do
  begin
    for c := 1 to stepno.count - 1 do
    begin
      if strtoint(scorelist[c]) > strtoint(scorelist[c - 1]) then
      begin
        a := scorelist[c - 1];
        b := stepno[c - 1];
        scorelist[c - 1] := scorelist[c];
        stepno[c - 1] := stepno[c];
        scorelist[c] := a;
        stepno[c] := b;
      end;
    end;
  end;

end;

function TForm1.MinMaxStart(ABoard: Tboard; SideIsRed: Boolean; depth: integer;
var aithinkstep: string): integer;
var
  a, b, c, d, bestvalue, value: integer;
  templist: Tstringlist;
  tempboard: Tboard;
  scorelist, steplist: Tstringlist;
  aithinksteplist: Tstringlist; // bestaithinkstep:string;
  // var a,b,c,bestvalue, value:integer;templist:tstringlist;tempboard:Tboard;sameboard:boolean;
begin
  // 一般來說，這裡有一個判斷棋局是否結束的函數，
  // 一旦棋局結束就不必繼續搜索了，直接返回極值。
  // 但由於黑白棋不存在中途結束的情況，故省略。
  Application.ProcessMessages;
  Score(ABoard, a, b);
  if a = 0 then
  begin
    if SideIsRed then
      Result := 2000
    else
      Result := -2000;
    exit;
  end;
  if b = 0 then
  begin
    if SideIsRed then
      Result := -2000
    else
      Result := 2000;
    exit;
  end;
  if (depth <= 0) or (a + b > 63) then // 葉子節點
  begin
    Result := EvaluateScore(ABoard, SideIsRed); // 直接返回對局面的估值
    exit;
  end;
  // if SideIsRed then
  bestvalue := -inf; // 初始最佳值設為負無窮
  // else
  // bestvalue:=INF;
  // 生成走法
  templist := Tstringlist.Create;
  if SideIsRed Then
    // templist:=MakeRedMoveAI(Aboard)
    MakeRedMove(ABoard, templist)
  else
    // templist:=MakeBlackMoveAI(Aboard);
    MakeBlackMove(ABoard, templist);
  if templist.count = 0 then
  begin
    if SideIsRed Then
      MakeBlackMove(ABoard, templist)
    else
      MakeRedMove(ABoard, templist);

    if templist.count = 0 then // both red and black no move
    begin
      templist.free;
      // result:=0;
      Result := EvaluateScore(ABoard, SideIsRed); // 直接返回對局面的估值
      exit;
    end;
    // templist.Free;
    // if a + b > 63 then begin
    // result:= -EvaluateScore(Aboard,not SideIsRed);
    // exit;
    // end
    // else begin
    Result := -MinMaxStart(ABoard, Not SideIsRed, depth, aithinkstep);
    // );//搜索子節點，注意前面的負號
    // result := -MinMaxSecond(Aboard,Not SideIsRed,depth);//);//搜索子節點，注意前面的負號
    // if a+ b < 40 then
    // result := result + 100;
    templist.free;
    exit;
  end;
  tempboard := ABoard;
  scorelist := Tstringlist.Create;
  steplist := Tstringlist.Create;
  For a := 0 to templist.count - 1 do
  begin
    Application.ProcessMessages;
    aithinkstep := '';
    // 走一步棋;//
    // 局面aboard 隨之改變
    ABoard := tempboard;
    steplist.Add(templist[a]);
    if SideIsRed Then
      RedBoardUpdate(ABoard, strtoint(templist[a]))
    else
      BlackBoardUpdate(ABoard, strtoint(templist[a]));
    value := -MinMax(ABoard, Not SideIsRed, depth - 2, aithinkstep);
    // );//搜索子節點，注意前面的負號
    scorelist.Add(inttostr(value));

  end;
  Scoresort(scorelist, steplist);
  aithinksteplist := Tstringlist.Create;
  for a := scorelist.count div 2 to scorelist.count do
    ProgressBar1.StepIt; // need modied
  For a := 0 to scorelist.count div 2 do // need modied
  begin
    // 走一步棋;//
    // 局面aboard 隨之改變

    ABoard := tempboard;
    aithinkstep := '';
    d := strtoint(steplist[a]);
    b := d div 8 + 1;
    c := d mod 8;
    if c = 0 then
    begin
      b := b - 1;
      c := 8;
    end;
    aithinkstep := inttostr(c) + ',' + inttostr(b);

    if SideIsRed Then
      RedBoardUpdate(ABoard, strtoint(steplist[a]))
    else
      BlackBoardUpdate(ABoard, strtoint(steplist[a]));

    value := -MinMax(ABoard, Not SideIsRed, depth - 1, aithinkstep);
    // );//搜索子節點，注意前面的負號

    // Aboard:=Tempboard;//撤銷剛才的一步;//恢復局面

    // for display move value need modied;
    d := strtoint(steplist[a]);
    b := d div 8 + 1;
    c := d mod 8;
    if c = 0 then
    begin
      b := b - 1;
      c := 8;
    end;
    AiListBox.items.Add(inttostr(c) + ',' + inttostr(b) + ' ' +
      inttostr(value));
    if value = bestvalue then
      aithinksteplist.Add(aithinkstep)
    else if value > bestvalue then
    begin
      AiMovelist := steplist[a] + ' ' + inttostr(value);
      aithinksteplist.clear;
      // support random best move
      aithinksteplist.Add(aithinkstep);
      // bestaithinkstep:=aithinkstep;

      // end of display value
      // if sideIsRed then
      // begin
      // if value > bestvalue then
      // begin
      bestvalue := value;
      // if depth = Realdepth then
      // aimovelist.Add(templist[a]+' '+intTostr(value));
    end;
    // end;
  end;
  {
    else begin
    if value < bestvalue then
    begin
    bestvalue:=value;
    if depth = Realdepth then
    aimovelist.Add(templist[a]+' '+intTostr(value));
    end;
    end;
    end;
  }
  b := Random(aithinksteplist.count);
  AiMovelist := inttostr(8 * strtoint(copy(aithinksteplist[b], 3, 1)) +
    strtoint(copy(aithinksteplist[b], 1, 1)) - 8) + ' ' + inttostr(bestvalue);
  aithinkstep := aithinksteplist[b];
  Result := bestvalue;
  // aithinkstep:=bestaithinkstep;
  scorelist.free;
  steplist.free;
  templist.free;
  aithinksteplist.free;
end;

function TForm1.ThinkNumber(ABoard: Tboard; SideIsRed: Boolean;
depth: integer): integer;
var
  a, b: integer;
  templist: Tstringlist;
  tempboard: Tboard;
  // var a,b,c,bestvalue, value:integer;templist:tstringlist;tempboard:Tboard;sameboard:boolean;
begin
  // 一般來說，這裡有一個判斷棋局是否結束的函數，
  // 一旦棋局結束就不必繼續搜索了，直接返回極值。
  // 但由於黑白棋不存在中途結束的情況，故省略。
  Result := 0;
  templist := Tstringlist.Create;
  Application.ProcessMessages;
  Score(ABoard, a, b);

  if a = 0 then
  begin
    {
      if SideIsRed then
      result:= 2000
      else
      result:= -2000;
    }
    exit;
  end;
  if b = 0 then
  begin
    {
      if SideIsRed then
      result:= -2000
      else
      result:= 2000;
      exit;
    }
  end;

  if (depth <= 0) or (a + b > 63) then // 葉子節點
  begin
    // result:= EvaluateScore(Aboard,SideIsRed);//直接返回對局面的估值
    exit;
  end;


  // bestvalue:=-INF;//初始最佳值設為負無窮
  // 生成走法

  if SideIsRed Then
    MakeRedMove(ABoard, templist)
  else

    MakeBlackMove(ABoard, templist);
  if templist.count = 0 then
  begin
    if SideIsRed Then
      MakeBlackMove(ABoard, templist)
    else
      MakeRedMove(ABoard, templist);

    if templist.count = 0 then // both red and black no move
    begin
      templist.free;

      // result:= EvaluateScore(Aboard,SideIsRed);//直接返回對局面的估值
      Result := 1;
      exit;
    end;

    // result := -MinMax(Aboard,Not SideIsRed,depth);//);//搜索子節點，注意前面的負號
    Result := 1;
    templist.free;
    exit;
  end;
  if depth = RealDepth - 1 then
  begin
    For a := 0 to templist.count - 1 do
    begin
      Application.ProcessMessages;
      inc(Result);
    end;
    templist.free;
    exit;
  end;
  tempboard := ABoard;
  For a := 0 to templist.count - 1 do
  begin
    // 走一步棋;//
    // 局面aboard 隨之改變
    ABoard := tempboard;
    if SideIsRed Then
      RedBoardUpdate(ABoard, strtoint(templist[a]))
    else
      BlackBoardUpdate(ABoard, strtoint(templist[a]));
    Result := Result + ThinkNumber(ABoard, Not SideIsRed, depth - 1);
    // value:= -MinMax(Aboard,Not SideIsRed,depth-1);//);//搜索子節點，注意前面的負號
  end;
  // if value > bestvalue then
  // bestvalue:=value;
  // end;
  templist.free;
  // Result:= bestvalue;
end;

procedure TForm1.TojavaboardbuttonClick(Sender: TObject);
var
  f: textfile;
  s, t, u: string;
  a: integer;
begin
  SaveDialog1.FileName := '*.htm';
  SaveDialog1.Filter := 'Apple game Java (*.htm)|*.HTM';

  if SaveDialog1.Execute then
  begin
    assignfile(f, SaveDialog1.FileName);
    Rewrite(f);
    Writeln(f, '<HTML>');
    Writeln(f, '<Center>');
    Writeln(f,
      '<APPLET width="284" height="331" codebase="http://home.i-cable.com/wu/java/" code="JavaReversi">');
    Writeln(f, '<PARAM name="Position" value="' + BoardtoFen + '">');
    If FirstIsRed then
      Writeln(f, '<PARAM name="MoveFirst" value="Red">')
    else
      Writeln(f, '<PARAM name="MoveFirst" value="Black">');
    s := '';
    for a := 0 to StepListBox.count - 1 do
    begin
      if copy(StepListBox.items[a], 1, 3) = 'Red' then
        t := copy(StepListBox.items[a], 5, 3)
      else if copy(StepListBox.items[a], 1, 5) = 'Black' then
        t := copy(StepListBox.items[a], 7, 3);
      if a = StepListBox.count - 2 then
      begin
        if (StepListBox.items[a] = 'Red pass') and
          (StepListBox.items[a + 1] = 'Black pass') or
          (StepListBox.items[a] = 'Black pass') and
          (StepListBox.items[a + 1] = 'Red pass') then
          break;
      end;
      if copy(t, 1, 1) = 'p' then
        s := s + ' P'
      Else
      begin
        u := copy(t, 1, 1);
        t := copy(t, 3, 1);
        if a = 0 then
          s := char(strtoint(u) + 64) + t
        else
          s := s + ' ' + char(strtoint(u) + 64) + t;
      end;

    end;

    Writeln(f, '<PARAM name="MoveList" value="' + s + '">');
    Writeln(f, '</HTML>');
    Writeln(f, '</Center>');
    closefile(f);
  end;

end;

function TForm1.EvaluateScore(const ABoard: Tboard;
const SideIsRed: Boolean): integer;
var
  a, b: integer;
begin
  a := 0;
  b := 0;
  Score(ABoard, a, b);
  if a + b < 59 then
  begin
    if ABoard[1][1] = 0 then
      Result := b - a + ABoard[2][1] * PosMark[2][1] + ABoard[1][2] *
        PosMark[1][2]
    else
      Result := b - a + ABoard[1][1] * PosMark[1][1];
    if ABoard[8][1] = 0 then
      Result := Result + ABoard[7][1] * PosMark[7][1] + ABoard[8][2] *
        PosMark[8][2]
    else
      Result := Result + ABoard[8][1] * PosMark[8][1];
    if ABoard[1][8] = 0 then
      Result := Result + ABoard[1][7] * PosMark[1][7] + ABoard[2][8] *
        PosMark[2][8]
    else
      Result := Result + ABoard[1][8] * PosMark[1][8];
    if ABoard[8][8] = 0 then
      Result := Result + ABoard[8][7] * PosMark[8][7] + ABoard[7][8] *
        PosMark[7][8]
    else
      Result := Result + ABoard[8][8] * PosMark[8][8];

    if not SideIsRed then
      Result := -Result;

    // if SideIsRed then
    // Result:= EvaluateScoreA(Aboard,SideIsRed,redposmark)
    // else
    // Result:= EvaluateScoreA(Aboard,SideIsRed,realposmark);
    // Result := a-b-(posmark[1][1]*Aboard[1][1]+posmark[2][1]*Aboard[2][1]+posmark[7][1]*Aboard[7][1]+posmark[8][1]*Aboard[8][1]+posmark[1][2]*Aboard[1][2]+posmark[8][2]*Aboard[8][2]+posmark[1][7]*Aboard[1][7]+posmark[8][7]*Aboard[8][7]+posmark[1][8]*Aboard[1][8]+posmark[7][8]*Aboard[7][8]+posmark[8][8]*Aboard[8][8]);
    // Result := a-b;
    // testng
    // if SideIsRed then
    // Result:= -Result;
  end
  else
  begin
    if SideIsRed then
      Result := b - a
    else
      Result := a - b;
  end;
end;

end.
