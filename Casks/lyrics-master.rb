cask :v1 => 'lyrics-master' do
  version '2.4.5'
  sha256 '5c66ec8da4bc2a21a41988c7d3cef11d2cca5324b7b943c4d5e3a11b1c6519b6'

  url "http://www.kenichimaehashi.com/lyricsmaster/download/LyricsMaster#{version.delete('.')}0.dmg"
  name 'Lyrics Master'
  homepage 'http://www.kenichimaehashi.com/lyricsmaster/'
  license :gratis

  suite 'Lyrics Master'
end
