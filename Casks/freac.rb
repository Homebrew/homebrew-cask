cask 'freac' do
  version '20151122'
  sha256 'bb41701858a8158114b32a2fadfdc835093f2f089a43eb08dbfea2f4d1056345'

  # sourceforge.net is the official download host per the vendor homepage
  url "https://downloads.sourceforge.net/bonkenc/freac-#{version}-macosx.dmg"
  name 'fre:ac'
  homepage 'http://www.freac.org'
  license :gpl

  app 'freac.app'
end
