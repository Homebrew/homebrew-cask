cask 'musescore' do
  version '2.2.1'
  sha256 'f1291f1f9ff5a85946215c926266f65cc51ab3558127e2cb554ac812d6fe320f'

  # ftp.osuosl.org/pub/musescore was verified as official when first introduced to the cask
  url "https://ftp.osuosl.org/pub/musescore/releases/MuseScore-#{version.major_minor_patch}/MuseScore-#{version}.dmg"
  name 'MuseScore'
  homepage 'https://musescore.org/'

  depends_on macos: '>= :lion'

  app "MuseScore #{version.major}.app"
end
