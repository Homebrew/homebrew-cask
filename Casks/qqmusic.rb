cask :v1 => 'qqmusic' do
  version '2.3'
  sha256 '6593590eb5b7fab34141283b0a893309ddec90cd3764c3a066499b487c2d33ff'

  url "http://dldir1.qq.com/music/clntupate/QQMusicForMacV#{version}.dmg"
  homepage 'http://y.qq.com'
  license :commercial

  app 'QQMusic.app'
end
