class Asepsis < Cask
  url 'http://downloads.binaryage.com/Asepsis-1.3.1.dmg'
  homepage 'http://asepsis.binaryage.com/'
  version '1.3.1'
  sha1 '8570b24e025b701ce7144a92cdfdbf629657c395'
  install 'Asepsis.mpkg'
  uninstall :pkgutil => 'com.binaryage.pkg.asepsis'
end
