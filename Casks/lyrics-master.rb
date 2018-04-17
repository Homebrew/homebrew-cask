cask 'lyrics-master' do
  version '2.4.8.2'
  sha256 '7ae9ab9790c3a951ae831703dfa7f5dd2ea58527a8c4996ee126c68a1eedb6cb'

  url "http://www.kenichimaehashi.com/lyricsmaster/download/LyricsMaster#{version.no_dots}.dmg"
  name 'Lyrics Master'
  homepage 'http://www.kenichimaehashi.com/lyricsmaster/'

  app 'Lyrics Master.app'
end
