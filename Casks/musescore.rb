cask :v1 => 'musescore' do
  version '1.3'
  sha256 'fcd106ec700f14053c9b4f3fd411d2335915c040f9071ea6da8d109e6827c3a5'

  url "http://ftp.osuosl.org/pub/musescore/releases/MuseScore-#{version}/MuseScore-#{version}.dmg"
  homepage 'http://musescore.org/'
  license :unknown    # todo: improve this machine-generated value

  app 'MuseScore.app'
end
