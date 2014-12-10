cask :v1 => 'kugoumusic' do
  version :latest
  sha256 :no_check

  url 'http://macservice.kugou.com/download/KugouMusicForMac.dmg'
  homepage 'http://www.kugou.com'
  license :unknown    # todo: improve this machine-generated value

  app 'KugouMusic.app'
end
