cask 'opera' do
  version '44.0.2510.1218'
  sha256 '1cff95623e5a4cbb4e6e9594b3ea83eac22d880a63252dc7683d349a617f34d7'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  app 'Opera.app'
end
