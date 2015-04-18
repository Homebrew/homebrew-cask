cask :v1 => 'lyrics-master' do
  version '2.4.3'
  sha256 '8a89c937d836b1c7e9c4cd436db0451620c131d0c2408140a4b967c2da223c88'

  url "http://www.kenichimaehashi.com/lyricsmaster/download/LyricsMaster#{version.gsub('.','')}0.dmg"
  name 'Lyrics Master'
  homepage 'http://www.kenichimaehashi.com/lyricsmaster/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  suite 'Lyrics Master'
end
