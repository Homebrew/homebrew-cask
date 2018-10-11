cask 'lyrics-master' do
  version '2.5.1.0'
  sha256 '6f55e4649094a1d46066132bf82e37152dbb24a6d776b84e5bd9c3680f3dde1f'

  url "http://www.kenichimaehashi.com/lyricsmaster/download/LyricsMaster#{version.no_dots}.dmg"
  name 'Lyrics Master'
  homepage 'http://www.kenichimaehashi.com/lyricsmaster/'

  app 'Lyrics Master.app'
end
