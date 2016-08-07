cask 'opera' do
  version '39.0.2256.43'
  sha256 'decc544ad2e76cb4fb8e1d7968fe4dc973d30a9c4cd1678e9b11479ec543433a'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'
  license :gratis

  app 'Opera.app'
end
