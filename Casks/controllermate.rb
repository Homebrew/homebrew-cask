class Controllermate < Cask
  url 'http://s3.amazonaws.com/orderedbytes/ControllerMate481.dmg'
  homepage 'http://www.orderedbytes.com/controllermate/'
  version '4.8.1'
  sha256 '43a21d9740364c283ffdbeb67392b48f56fa31b084f1607799321e5ed24f4a5c'
  install 'ControllerMate.pkg'
  uninstall :script => 'ControllerMate Uninstaller.app/Contents/MacOS/ControllerMate Uninstaller'
end
