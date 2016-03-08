cask 'opera' do
  version '35.0.2066.82'
  sha256 'c09397ba6ba7d606d1f5d2145e2b923775668ebd872bbad3bd705bb1245dc7ca'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'http://www.opera.com/'
  license :gratis

  app 'Opera.app'
end
