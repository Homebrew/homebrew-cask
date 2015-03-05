cask :v1 => 'musescore' do
  version '1.3'
  sha256 'fcd106ec700f14053c9b4f3fd411d2335915c040f9071ea6da8d109e6827c3a5'

  # osuosl.org is the official download host per the vendor homepage
  url "http://ftp.osuosl.org/pub/musescore/releases/MuseScore-#{version}/MuseScore-#{version}.dmg"
  name 'MuseScore'
  homepage 'http://musescore.org/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'MuseScore.app'
end
