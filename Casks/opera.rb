cask 'opera' do
  version '49.0.2725.34'
  sha256 'd5625bc153c1506bb3bccda941019025cf4e8be6eba454a963ebbb822ebb6f94'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  auto_updates true

  app 'Opera.app'
end
