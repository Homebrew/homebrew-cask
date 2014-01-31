class Asepsis < Cask
  url 'http://downloads.binaryage.com/Asepsis-1.4.dmg'
  homepage 'http://asepsis.binaryage.com/'
  version '1.4.0'
  sha1 '2f4a731213dfee5b06b51e472fb73f9f2b6f7c5a'
  install 'Asepsis.mpkg'
  uninstall :pkgutil => 'com.binaryage.pkg.asepsis'
end
