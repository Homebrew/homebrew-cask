cask 'opera' do
  version '43.0.2442.1165'
  sha256 '608d5f68cad31846098da2a4ace03d110c1dc9d41483b8c04855cb33aa02f327'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  app 'Opera.app'
end
