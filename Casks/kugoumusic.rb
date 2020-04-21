cask 'kugoumusic' do
  version '2.9.8'
  sha256 'b7cc6628b5546c76b1e13be504283787f225168a7939661512496bb90a031b52'

  url "http://downmini.kugou.com/mac/Kugou_V#{version}.dmg"
  appcast 'http://download.kugou.com/mac.html'
  name 'Kugou Music'
  homepage 'https://www.kugou.com/'

  app 'KugouMusic.app'
end
