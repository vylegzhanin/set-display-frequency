program setDisplayFrequency;

uses SysUtils, Windows;

var
  dm: TDEVMODE;
begin
  FillChar(dm, SizeOf(dm), 0);
  dm.dmSize := SizeOf(dm);
  dm.dmDisplayFrequency := StrToInt(ParamStr(1));
  dm.dmFields := DM_DISPLAYFREQUENCY;

  ChangeDisplaySettings(@dm, CDS_UPDATEREGISTRY);
  ChangeDisplaySettings(@dm, CDS_UPDATEREGISTRY);
end.

