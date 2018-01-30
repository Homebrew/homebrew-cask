cask 'kugoumusic' do
  version '2.5.2'
  sha256 '667f37741aa32fd49e521f8acdc9df9a50b6b6c426eb8729b0a76633e3f8deb3'

  url "http://downmini.kugou.com/mac/Kugou_V#{version}.dmg"
  name 'Kugou Music'
  homepage 'http://www.kugou.com/'

  app 'KugouMusic.app'
end
