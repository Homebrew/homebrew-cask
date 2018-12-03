cask 'kugoumusic' do
  version '2.7.4'
  sha256 '30f4d6815fb6eade3d150b2f2fc47b60f16ef4f6fea6ab49378349e5f1f39416'

  url "http://downmini.kugou.com/mac/Kugou_V#{version}.dmg"
  appcast 'http://download.kugou.com/mac.html'
  name 'Kugou Music'
  homepage 'https://www.kugou.com/'

  app 'KugouMusic.app'
end
