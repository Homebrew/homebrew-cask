cask 'musescore' do
  version '2.1'
  sha256 '251dea5f14b48b87e5cd3aba57bcc9cf0e430e363c0e6b6e741be6356957b3a7'

  # ftp.osuosl.org/pub/musescore was verified as official when first introduced to the cask
  url "https://ftp.osuosl.org/pub/musescore/releases/MuseScore-#{version.major_minor_patch}/MuseScore-#{version}.dmg"
  name 'MuseScore'
  homepage 'https://musescore.org/'

  depends_on macos: '>= :lion'

  app "MuseScore #{version.major}.app"
end
