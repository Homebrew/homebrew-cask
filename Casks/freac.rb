cask :v1 => 'freac' do
  version '20150725'
  sha256 '5b7e1976296b863937909636c9916d955a7b9f066200cfaed9b489220d2fcfe9'

  # sourceforge.net is the official download host per the vendor homepage
  url "https://downloads.sourceforge.net/bonkenc/freac-#{version}-macosx.dmg"
  name 'fre:ac'
  homepage 'http://www.freac.org'
  license :gpl

  app 'freac.app'
end
