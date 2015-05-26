cask :v1 => 'musescore' do
  version '2.0.1'
  sha256 'f85f25384ee0e569fc82f87b0bf54a16ec6e237bcd81a5a27eb5ffc6008c4cdb'

  # osuosl.org is the official download host per the vendor homepage.
  url "http://ftp.osuosl.org/pub/musescore/releases/MuseScore-#{version}/MuseScore-#{version}.dmg"
  name 'MuseScore'
  homepage 'http://musescore.org/'
  license :gpl

  app 'MuseScore 2.app'
end
