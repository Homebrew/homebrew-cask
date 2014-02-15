class Asepsis < Cask
  url 'http://downloads.binaryage.com/Asepsis-1.4.dmg'
  homepage 'http://asepsis.binaryage.com/'
  version '1.4.0'
  sha256 '5d8fc01f515855a59e3208bdfde1d6040c76f133b26a0bf4a7fc3646b0383117'
  install 'Asepsis.mpkg'
  uninstall :pkgutil => 'com.binaryage.pkg.asepsis'
end
