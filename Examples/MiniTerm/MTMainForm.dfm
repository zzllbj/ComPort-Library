object MainForm: TMainForm
  Left = 372
  Top = 256
  Caption = 'Mini Terminal'
  ClientHeight = 522
  ClientWidth = 969
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel: TPanel
    Left = 0
    Top = 490
    Width = 969
    Height = 32
    Align = alBottom
    BevelOuter = bvNone
    PopupMenu = PopupMenu
    TabOrder = 1
    object TerminalReady: TComLed
      Left = 8
      Top = 3
      Width = 25
      Height = 25
      ComPort = ComPort
      LedSignal = lsDSR
      Kind = lkRedLight
      RingDuration = 0
    end
    object LabelTerminalReady: TLabel
      Left = 33
      Top = 10
      Width = 69
      Height = 13
      Caption = 'Terminal ready'
    end
    object LabelCarrierDetected: TLabel
      Left = 174
      Top = 10
      Width = 75
      Height = 13
      Caption = 'Carrier detected'
    end
    object ComLed1: TComLed
      Left = 143
      Top = 2
      Width = 25
      Height = 25
      ComPort = ComPort
      LedSignal = lsRLSD
      Kind = lkRedLight
      RingDuration = 0
    end
    object ConnButton: TButton
      Left = 288
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Connect'
      TabOrder = 0
      OnClick = ConnButtonClick
    end
    object PortButton: TButton
      Left = 376
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Serial Port'
      TabOrder = 1
      OnClick = PortButtonClick
    end
    object TermButton: TButton
      Left = 464
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Terminal'
      TabOrder = 2
      OnClick = TermButtonClick
    end
    object FontButton: TButton
      Left = 552
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Font'
      TabOrder = 3
      OnClick = FontButtonClick
    end
    object ButtonComCheck: TButton
      Left = 756
      Top = 4
      Width = 153
      Height = 25
      Caption = 'Direct COM Check'
      TabOrder = 4
      OnClick = ButtonComCheckClick
    end
  end
  object ComTerminal: TComTerminal
    Left = 0
    Top = 0
    Width = 969
    Height = 471
    Align = alClient
    Color = clBlack
    ComPort = ComPort
    Emulation = teVT100orANSI
    Font.Charset = OEM_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Terminal'
    Font.Style = []
    PopupMenu = PopupMenu
    ScrollBars = ssBoth
    TabOrder = 0
    Caret = tcUnderline
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 471
    Width = 969
    Height = 19
    Panels = <
      item
        Width = 500
      end
      item
        Width = 80
      end
      item
        Width = 80
      end
      item
        Width = 500
      end>
    SimpleText = '...'
  end
  object ComPort: TComPort
    BaudRate = br9600
    Port = 'COM1'
    Parity.Bits = prNone
    StopBits = sbOneStopBit
    DataBits = dbEight
    Events = [evRxChar, evTxEmpty, evRxFlag, evRing, evBreak, evCTS, evDSR, evError, evRLSD, evRx80Full]
    FlowControl.OutCTSFlow = True
    FlowControl.OutDSRFlow = False
    FlowControl.ControlDTR = dtrEnable
    FlowControl.ControlRTS = rtsHandshake
    FlowControl.XonXoffOut = False
    FlowControl.XonXoffIn = False
    StoredProps = [spBasic]
    TriggersOnRxChar = False
    OnAfterOpen = ComPortAfterOpen
    OnAfterClose = ComPortAfterClose
    Left = 203
    Top = 222
  end
  object PopupMenu: TPopupMenu
    Left = 204
    Top = 168
    object MenuItemCopy: TMenuItem
      Caption = 'Copy'
    end
    object MenuItemPaste: TMenuItem
      Caption = 'Paste'
      OnClick = MenuItemPasteClick
    end
  end
  object ComDataPacket1: TComDataPacket
    ComPort = ComPort
    CaseInsensitive = True
    IncludeStrings = True
    MaxBufferSize = 50
    StartString = '1'
    StopString = '6'
    OnPacket = ComDataPacket1Packet
    OnCustomStart = ComDataPacket1CustomStart
    OnCustomStop = ComDataPacket1CustomStop
    Left = 200
    Top = 280
  end
end
