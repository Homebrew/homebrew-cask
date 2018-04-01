cask 'kugoumusic' do
  version '2.5.4'
  sha256 'c8d4e40dab713d73a64762913f4b34819a31003a7042bae77125afbeb79151b1'

  url "http://downmini.kugou.com/mac/Kugou_V#{version}.dmg"
  name 'Kugou Music'
  homepage 'http://www.kugou.com/'

  app 'KugouMusic.app'
end
