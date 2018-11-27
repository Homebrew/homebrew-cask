cask 'opera' do
  version '56.0.3051.116'
  sha256 'dc9c1bc6b2d5c440f9b80009da0b825bc2c50cd8480c451ba5311accc3d85749'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  auto_updates true

  app 'Opera.app'
end
