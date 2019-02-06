cask 'kugoumusic' do
  version '2.8.0'
  sha256 '38238c6e5630b71c26850c010740624fc6421582343c4381b7198a9b0e6704d0'

  url "http://downmini.kugou.com/mac/Kugou_V#{version}.dmg"
  appcast 'http://download.kugou.com/mac.html'
  name 'Kugou Music'
  homepage 'https://www.kugou.com/'

  app 'KugouMusic.app'
end
