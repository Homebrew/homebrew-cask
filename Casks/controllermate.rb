class Controllermate < Cask
  url 'http://s3.amazonaws.com/orderedbytes/ControllerMate480.dmg'
  homepage 'http://www.orderedbytes.com/controllermate/'
  version '4.8.0'
  sha256 'a3a25989a5cc47600f1d72cdeefdb7505b3af23c7cdfcc235f6e2cde0197a879'
  install 'ControllerMate.pkg'
  uninstall :script => 'ControllerMate Uninstaller.app/Contents/MacOS/ControllerMate Uninstaller'
end
