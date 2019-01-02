cask 'kugoumusic' do
  version '2.7.8'
  sha256 '01d0c741b23b3cb4c7513f606b85c7f06236127877c8f2201dd368878ce99636'

  url "http://downmini.kugou.com/mac/Kugou_V#{version}.dmg"
  appcast 'http://download.kugou.com/mac.html'
  name 'Kugou Music'
  homepage 'https://www.kugou.com/'

  app 'KugouMusic.app'
end
