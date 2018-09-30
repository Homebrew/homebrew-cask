cask 'opera' do
  version '56.0.3051.35'
  sha256 '2b5a601eb9acdb7024ef188c41cda716e7916729198f8349af3e318ff2efeba3'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  auto_updates true

  app 'Opera.app'
end
