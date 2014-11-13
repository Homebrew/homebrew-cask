cask :v1 => 'lyrics-master' do
  version '2.4.2'
  sha256 '1cd0f639ea1e557e0abef320ee8ea61877c24bab444cb573bfd41d0887605d7f'

  url "http://www.kenichimaehashi.com/lyricsmaster/download/LyricsMaster#{version.gsub('.','')}0.dmg"
  homepage 'http://www.kenichimaehashi.com/lyricsmaster/'
  license :unknown

  suite 'Lyrics Master'
end
