cask 'opera' do
  version '36.0.2130.65'
  sha256 '22cb170ea181b8da4ea8218145ca5323f83a727d64c1b13fb300ce50c7f420cc'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'http://www.opera.com/'
  license :gratis

  app 'Opera.app'
end
