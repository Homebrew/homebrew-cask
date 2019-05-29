cask 'kugoumusic' do
  version '2.9.0'
  sha256 '81470fd8a133d83f0af762c4395862bccdc3fd446d4ce56f97eaae4a0a5b04c2'

  url "http://downmini.kugou.com/mac/Kugou_V#{version}.dmg"
  appcast 'http://download.kugou.com/mac.html'
  name 'Kugou Music'
  homepage 'https://www.kugou.com/'

  app 'KugouMusic.app'
end
