cask 'opera' do
  version '42.0.2393.137'
  sha256 'b0f6668cc37906b7b5126bcda6cec5cb9349290856296b82e9d73d7ff166cd3a'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  app 'Opera.app'
end
