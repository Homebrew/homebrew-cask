cask 'kugoumusic' do
  version '2.9.6'
  sha256 'ba52014dd47bc79dae6534f94b4fdff8587df9a95faff877fb33361adc2193d8'

  url "http://downmini.kugou.com/mac/Kugou_V#{version}.dmg"
  appcast 'http://download.kugou.com/mac.html'
  name 'Kugou Music'
  homepage 'https://www.kugou.com/'

  app 'KugouMusic.app'
end
