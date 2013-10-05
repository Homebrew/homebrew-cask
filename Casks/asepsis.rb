class Asepsis < Cask
  url 'http://downloads.binaryage.com/Asepsis-1.3.dmg'
  homepage 'http://asepsis.binaryage.com/'
  version '1.3'
  sha1 '8eefcb13f738fce91a101eebab4314e31c4fa857'
  install 'Asepsis.mpkg'
  uninstall :pkgutil => 'com.binaryage.pkg.asepsis'
end
