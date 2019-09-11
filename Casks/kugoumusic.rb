cask 'kugoumusic' do
  version '2.9.2'
  sha256 'a93a4a8134317517b17bd9203acdb5fab6b112df5b5b1df5208de89ebbebd9c7'

  url "http://downmini.kugou.com/mac/Kugou_V#{version}.dmg"
  appcast 'http://download.kugou.com/mac.html'
  name 'Kugou Music'
  homepage 'https://www.kugou.com/'

  app 'KugouMusic.app'
end
