cask 'opera' do
  version '53.0.2907.99'
  sha256 'd07d05206430a5a559c1dd3437594b077028bc1656c1268e5e8e6f5f1434ac3c'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  auto_updates true

  app 'Opera.app'
end
