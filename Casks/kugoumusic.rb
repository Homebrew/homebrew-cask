cask 'kugoumusic' do
  version '2.9.4'
  sha256 'b7e32d135842ab8a8ad19744300e18755cc928ace9e3957494d790cd26c2e33c'

  url "http://downmini.kugou.com/mac/Kugou_V#{version}.dmg"
  appcast 'http://download.kugou.com/mac.html'
  name 'Kugou Music'
  homepage 'https://www.kugou.com/'

  app 'KugouMusic.app'
end
