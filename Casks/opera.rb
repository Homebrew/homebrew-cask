cask 'opera' do
  version '53.0.2907.106'
  sha256 '40ff8e54356b8206b28fdd0e18a257b19779199793f67cf4a0d66565fec33ad7'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  auto_updates true

  app 'Opera.app'
end
