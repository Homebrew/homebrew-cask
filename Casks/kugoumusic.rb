class Kugoumusic < Cask
  version :latest
  sha256 :no_check

  url 'http://macservice.kugou.com/download/KugouMusicForMac.dmg'
  homepage 'http://www.kugou.com'
  license :unknown

  app 'KugouMusic.app'
end
