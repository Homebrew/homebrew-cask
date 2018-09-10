cask 'opera' do
  version '55.0.2994.56'
  sha256 '42b002f0a9121d8b8446db668ca5c87cf8cc455521ce2a8f81e25cc2773cda18'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  auto_updates true

  app 'Opera.app'
end
