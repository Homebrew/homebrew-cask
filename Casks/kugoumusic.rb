cask 'kugoumusic' do
  version :latest
  sha256 :no_check

  url 'http://macservice.kugou.com/download/KugouMusicForMac.dmg'
  name 'Kugou Music'
  homepage 'http://www.kugou.com'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'KugouMusic.app'
end
