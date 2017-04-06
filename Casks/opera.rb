cask 'opera' do
  version '44.0.2510.1159'
  sha256 '22b3082bf1d8f5e01368b7d39029ad5a89ff30e41c549c8b27ad6ab73b5dcd62'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  app 'Opera.app'
end
