cask 'musescore' do
  version '2.0.3'
  sha256 'ba50b2a8885d70ad9447154ef587f2496d21e474d90432be2db17e9cd29d951f'

  # ftp.osuosl.org/pub/musescore was verified as official when first introduced to the cask
  url "http://ftp.osuosl.org/pub/musescore/releases/MuseScore-#{version}/MuseScore-#{version}.dmg"
  name 'MuseScore'
  homepage 'https://musescore.org/'
  license :gpl

  depends_on macos: '>= :lion'

  app "MuseScore #{version.major}.app"
end
