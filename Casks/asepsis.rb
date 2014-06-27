class Asepsis < Cask
  version '1.4.1'
  sha256 '1e757a51bfeb1cf57e179761d7f931a1bf3e0216dd9d66fb56158273c7acdf9e'

  url 'http://downloads.binaryage.com/Asepsis-1.4.1.dmg'
  homepage 'http://asepsis.binaryage.com/'

  install 'Asepsis.pkg'
  uninstall :pkgutil => 'com.binaryage.pkg.asepsis'
end
