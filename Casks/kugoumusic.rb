cask 'kugoumusic' do
  version :latest
  sha256 :no_check

  url 'http://macservice.kugou.com/download/KugouMusicForMac.dmg'
  name 'Kugou Music'
  homepage 'https://www.kugou.com/'

  app 'KugouMusic.app'
end
