cask 'fpc' do
  version '2.6.4'
  sha256 '0ae534c83c2cfd25f4bfc856dd54e5f1f89c3f5e5cf7089bd0b62be2f5b9a83b'

  # sourceforge.net/freepascal was verified as official when first introduced to the cask
  url "http://downloads.sourceforge.net/freepascal/fpc-#{version}.intel-macosx.dmg"
  name 'Free Pascal'
  homepage 'http://www.freepascal.org/'
  license :gpl

  pkg "fpc-#{version}.intel-macosx.pkg"

  uninstall pkgutil: 'org.freepascal.freePascalCompiler262.fpcinst386.pkg'
end
