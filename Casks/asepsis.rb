class Asepsis < Cask
  url 'http://downloads.binaryage.com/Asepsis-1.3.2.dmg'
  homepage 'http://asepsis.binaryage.com/'
  version '1.3.2'
  sha1 'fbb97a5b91c3020e5bdb1a5088afa912512f02b0'
  install 'Asepsis.mpkg'
  uninstall :pkgutil => 'com.binaryage.pkg.asepsis'
end
