class Controllermate < Cask
  version :latest
  sha256 :no_check 

  url 'https://s3.amazonaws.com/orderedbytes/ControllerMate.dmg'
  homepage 'http://www.orderedbytes.com/controllermate/'

  pkg 'ControllerMate.pkg'
  uninstall :script => 'ControllerMate Uninstaller.app/Contents/MacOS/ControllerMate Uninstaller'
end
