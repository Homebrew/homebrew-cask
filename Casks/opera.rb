cask 'opera' do
  version '53.0.2907.37'
  sha256 'eca1b65401d11d77990f09ccec0cd4be41d7d0ecc140ef4b94d77858455f7858'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  auto_updates true

  app 'Opera.app'
end
