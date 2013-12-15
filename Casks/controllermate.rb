class Controllermate < Cask
  url 'http://s3.amazonaws.com/orderedbytes/ControllerMate471.dmg'
  homepage 'http://www.orderedbytes.com/controllermate/'
  version '4.7.1'
  sha1 'c1aad8a7dae53415b304933b9adf43784436bab7'
  install 'ControllerMate.pkg'
  uninstall :script => 'ControllerMate Uninstaller.app/Contents/MacOS/ControllerMate Uninstaller'
end
