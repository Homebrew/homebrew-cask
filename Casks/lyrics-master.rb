cask 'lyrics-master' do
  version '2.4.8.3'
  sha256 '094e64ca879c8566ed4c090a101da57584fc9008b80ed2e7d49d14fb693afa31'

  url "http://www.kenichimaehashi.com/lyricsmaster/download/LyricsMaster#{version.no_dots}.dmg"
  name 'Lyrics Master'
  homepage 'http://www.kenichimaehashi.com/lyricsmaster/'

  app 'Lyrics Master.app'
end
