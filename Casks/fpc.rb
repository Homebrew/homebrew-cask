cask 'fpc' do
  version '3.0.0'
  sha256 '6bbacb26b9155fb1a60253be299ce4ef957379b91cc204c247357796ef823809'

  # sourceforge.net/freepascal was verified as official when first introduced to the cask
  url "http://downloads.sourceforge.net/freepascal/fpc-#{version}.intel-macosx.dmg"
  name 'Free Pascal'
  homepage 'http://www.freepascal.org/'
  license :gpl

  pkg "fpc-#{version}.intel-macosx.pkg"

  uninstall pkgutil: 'org.freepascal.freePascalCompiler262.fpcinst386.pkg'
end
