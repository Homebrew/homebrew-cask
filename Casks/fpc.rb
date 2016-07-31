cask 'fpc' do
  version '3.0.0'
  sha256 '6bbacb26b9155fb1a60253be299ce4ef957379b91cc204c247357796ef823809'

  # sourceforge.net/freepascal was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/freepascal/fpc-#{version}.intel-macosx.dmg"
  appcast 'https://sourceforge.net/projects/freepascal/rss',
          checkpoint: 'cbdcaad59ae25b54d2676e8395907a2e03c37bcd57d82502c45e66a63b915290'
  name 'Free Pascal'
  homepage 'http://www.freepascal.org/'
  license :gpl

  pkg "fpc-#{version}.intel-macosx.pkg"

  uninstall pkgutil: 'org.freepascal.freePascalCompiler262.fpcinst386.pkg'
end
