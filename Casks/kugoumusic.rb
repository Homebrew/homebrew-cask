cask 'kugoumusic' do
  version '2.7.0'
  sha256 'bd0081ddacdf60a7774f599f7aad2abded65e1e5615872439efc28dd8e7a6f3b'

  url "http://downmini.kugou.com/mac/Kugou_V#{version}.dmg"
  appcast 'http://download.kugou.com/mac.html'
  name 'Kugou Music'
  homepage 'https://www.kugou.com/'

  app 'KugouMusic.app'
end
