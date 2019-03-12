cask 'kugoumusic' do
  version '2.8.2'
  sha256 '27c2d09d389d60293d67d132babc347d5f3fbc8911dae14a7f37f1cc2791e6eb'

  url "http://downmini.kugou.com/mac/Kugou_V#{version}.dmg"
  appcast 'http://download.kugou.com/mac.html'
  name 'Kugou Music'
  homepage 'https://www.kugou.com/'

  app 'KugouMusic.app'
end
