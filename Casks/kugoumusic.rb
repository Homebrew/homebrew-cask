cask 'kugoumusic' do
  version '3.0.0'
  sha256 '098889877822d04dd09bffe7076f28d0f19f2caa2b8cc364f5945cc9c3f37667'

  url "http://downmini.kugou.com/mac/Kugou_V#{version}.dmg"
  appcast 'http://download.kugou.com/mac.html'
  name 'Kugou Music'
  homepage 'https://www.kugou.com/'

  app 'KugouMusic.app'
end
