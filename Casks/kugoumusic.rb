cask 'kugoumusic' do
  version :latest
  sha256 :no_check

  url 'http://download.kugou.com/download/kugou_mac'
  name 'Kugou Music'
  homepage 'http://www.kugou.com/'

  app 'KugouMusic.app'
end
