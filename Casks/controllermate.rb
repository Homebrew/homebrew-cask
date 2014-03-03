class Controllermate < Cask
  url 'http://s3.amazonaws.com/orderedbytes/ControllerMate471.dmg'
  homepage 'http://www.orderedbytes.com/controllermate/'
  version '4.7.1'
  sha256 '37200925f56befd99391de1bbb58a86589fa10d86361bb44e2300980407d1ca8'
  install 'ControllerMate.pkg'
  uninstall :script => 'ControllerMate Uninstaller.app/Contents/MacOS/ControllerMate Uninstaller'
end
