cask 'opera' do
  version '41.0.2353.46'
  sha256 'a4b6c81e5c80699b256dd0c5f81ed67af89b040f041f8bd2812c2698401c53d9'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  app 'Opera.app'
end
