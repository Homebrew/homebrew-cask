cask 'opera' do
  version '37.0.2178.43'
  sha256 '3c1165e5604fb93079615501c47e8df41d8efa8ee52f236bb4dfab0a44aee409'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'http://www.opera.com/'
  license :gratis

  app 'Opera.app'
end
