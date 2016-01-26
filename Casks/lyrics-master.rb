cask 'lyrics-master' do
  version '2.4.6'
  sha256 '31d3a4bf83b3daca84a96e5816bfc142c83c78e82af3943069f96250fd27afc9'

  url "http://www.kenichimaehashi.com/lyricsmaster/download/LyricsMaster#{version.delete('.')}0.dmg"
  name 'Lyrics Master'
  homepage 'http://www.kenichimaehashi.com/lyricsmaster/'
  license :gratis

  suite 'Lyrics Master'
end
