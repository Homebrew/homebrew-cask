cask 'kugoumusic' do
  version '2.5.6'
  sha256 'a94bee1eb2177e67537af6fbba03a25f43acf798c017112bcc27412265032ecc'

  url "http://downmini.kugou.com/mac/Kugou_V#{version}.dmg"
  name 'Kugou Music'
  homepage 'http://www.kugou.com/'

  app 'KugouMusic.app'
end
