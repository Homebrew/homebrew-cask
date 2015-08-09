cask :v1 => 'lyrics-master' do
  version '2.4.4'
  sha256 '659b958c8a4b9d3e24245398d0a08318b354d92815bbfd15d157cdc9367466c5'

  url "http://www.kenichimaehashi.com/lyricsmaster/download/LyricsMaster#{version.delete('.')}0.dmg"
  name 'Lyrics Master'
  homepage 'http://www.kenichimaehashi.com/lyricsmaster/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  suite 'Lyrics Master'
end
