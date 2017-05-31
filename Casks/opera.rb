cask 'opera' do
  version '45.0.2552.888'
  sha256 'd0248a14f784324a2a7d04992232953dc22256ecdb9cf5f91ab4fff65745b11e'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  app 'Opera.app'
end
