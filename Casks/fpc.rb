class Fpc < Cask
  version '2.6.2'
  sha256 '09b0964c6fb11eaa04e0fa065e479674384aab81e69e377bb1e030ec1d3398a6'

  url 'https://downloads.sourceforge.net/freepascal/fpc-2.6.2.intel-macosx.dmg'
  homepage 'http://www.freepascal.org/'

  pkg 'fpc-2.6.2rc1.intel-macosx.pkg'
  uninstall :pkgutil => 'org.freepascal.freePascalCompiler262.fpcinst386.pkg'
end
