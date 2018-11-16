cask 'kugoumusic' do
  version '2.7.2'
  sha256 'f689d16b9bd1e273d47b55488e17cdb7bcaf0c09b9b62657de08348d4e36aebd'

  url "http://downmini.kugou.com/mac/Kugou_V#{version}.dmg"
  appcast 'http://download.kugou.com/mac.html'
  name 'Kugou Music'
  homepage 'https://www.kugou.com/'

  app 'KugouMusic.app'
end
