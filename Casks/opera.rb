cask 'opera' do
  version '56.0.3051.52'
  sha256 '98bfc4fd76cfbcb1bc4429ec4b560bbec40477d8b979eecd699f1a535d0e64df'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  auto_updates true

  app 'Opera.app'
end
