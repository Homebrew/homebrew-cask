cask 'kugoumusic' do
  version '2.5.6'
  sha256 'a02ea949d09cac5f1808606bc93c0902c433593602fc814b323723a5a3b6cfdb'

  url "http://downmini.kugou.com/mac/Kugou_V#{version}.dmg"
  name 'Kugou Music'
  homepage 'http://www.kugou.com/'

  app 'KugouMusic.app'
end
