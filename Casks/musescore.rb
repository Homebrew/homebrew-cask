cask 'musescore' do
  version '2.2'
  sha256 '92f365f1b2129cfe0ee0537f4f6074a529107821167650eafe472044d4f2bac1'

  # ftp.osuosl.org/pub/musescore was verified as official when first introduced to the cask
  url "https://ftp.osuosl.org/pub/musescore/releases/MuseScore-#{version.major_minor_patch}/MuseScore-#{version}.dmg"
  name 'MuseScore'
  homepage 'https://musescore.org/'

  depends_on macos: '>= :lion'

  app "MuseScore #{version.major}.app"
end
