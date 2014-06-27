class Controllermate < Cask
  version '4.8.2'
  sha256 '654096120355452f69de00f46c55ad295515a497255e035707ca195d1b17eac4'

  url 'https://s3.amazonaws.com/orderedbytes/ControllerMate482.dmg'
  homepage 'http://www.orderedbytes.com/controllermate/'

  install 'ControllerMate.pkg'
  uninstall :script => 'ControllerMate Uninstaller.app/Contents/MacOS/ControllerMate Uninstaller'
end
