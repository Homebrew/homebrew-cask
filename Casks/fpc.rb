cask :v1 => 'fpc' do
  version '2.6.2'
  sha256 '09b0964c6fb11eaa04e0fa065e479674384aab81e69e377bb1e030ec1d3398a6'

  url "https://downloads.sourceforge.net/freepascal/fpc-#{version}.intel-macosx.dmg"
  homepage 'http://www.freepascal.org/'
  license :oss

  pkg "fpc-#{version}rc1.intel-macosx.pkg"

  uninstall :pkgutil => 'org.freepascal.freePascalCompiler262.fpcinst386.pkg'
end
