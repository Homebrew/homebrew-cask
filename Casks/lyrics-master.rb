cask 'lyrics-master' do
  version '2.5.2.0'
  sha256 'e31c03fc8556f7d83e38e35fc073b2454c8a5088d6512470ae274338a2c63cdf'

  url "http://www.kenichimaehashi.com/lyricsmaster/download/LyricsMaster#{version.no_dots}.dmg"
  name 'Lyrics Master'
  homepage 'http://www.kenichimaehashi.com/lyricsmaster/'

  app 'Lyrics Master.app'
end
