cask 'kugoumusic' do
  version '2.6.0'
  sha256 '9971614ad923a3e7912275ec5b47679f0268d60359c33a1a918ad4d4828a87f9'

  url "http://downmini.kugou.com/mac/Kugou_V#{version}.dmg"
  name 'Kugou Music'
  homepage 'http://www.kugou.com/'

  app 'KugouMusic.app'
end
