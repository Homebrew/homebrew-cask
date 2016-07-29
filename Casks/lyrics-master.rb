cask 'lyrics-master' do
  version '2.4.7'
  sha256 '1f53315fe24e4d1d18fa4b3dc0e0c9bfb45ecaa068af72f57237c538ebc2220b'

  url "http://www.kenichimaehashi.com/lyricsmaster/download/LyricsMaster#{version.no_dots}0.dmg"
  name 'Lyrics Master'
  homepage 'http://www.kenichimaehashi.com/lyricsmaster/'
  license :gratis

  suite 'Lyrics Master'
end
