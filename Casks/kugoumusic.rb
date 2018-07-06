cask 'kugoumusic' do
  version '2.6.2'
  sha256 'eb5eea4a8951d4de971f4a6a2d9a4ada3f6d4243e52c5a01c0ae1536fec3c4d2'

  url "http://downmini.kugou.com/mac/Kugou_V#{version}.dmg"
  name 'Kugou Music'
  homepage 'http://www.kugou.com/'

  app 'KugouMusic.app'
end
