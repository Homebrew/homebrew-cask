cask :v1 => 'freac' do
  version '20151004'
  sha256 '3a6f0029638a71097f60771bc33bfcd4c3be7de7830fe67c345b23c5dd814a3e'

  # sourceforge.net is the official download host per the vendor homepage
  url "https://downloads.sourceforge.net/bonkenc/freac-#{version}-macosx.dmg"
  name 'fre:ac'
  homepage 'http://www.freac.org'
  license :gpl

  app 'freac.app'
end
