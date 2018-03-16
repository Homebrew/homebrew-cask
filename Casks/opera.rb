cask 'opera' do
  version '51.0.2830.62'
  sha256 '224393d23342e6621ae8023b50866436019726130ac52861f161cb501a0215c9'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  auto_updates true

  app 'Opera.app'
end
