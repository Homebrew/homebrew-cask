cask 'kugoumusic' do
  version '2.6.4'
  sha256 '1dce7207e8a525d09feb478d85b0bf44e835b2cf2047be4a63d5073e9062f7c8'

  url "http://downmini.kugou.com/mac/Kugou_V#{version}.dmg"
  name 'Kugou Music'
  homepage 'http://www.kugou.com/'

  app 'KugouMusic.app'
end
