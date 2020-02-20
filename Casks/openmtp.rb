cask 'openmtp' do
  version '2.4.1'
  sha256 'e1e5465fc493278fd617887aef10b680c3b2ec8b2b3b989b46707477c949a3ce'

  # github.com/ganeshrvel/openmtp was verified as official when first introduced to the cask
  url "https://github.com/ganeshrvel/openmtp/releases/download/v#{version}/OpenMTP-#{version}-mac.zip"
  appcast 'https://github.com/ganeshrvel/openmtp/releases.atom'
  name 'OpenMTP'
  homepage 'https://ganeshrvel.github.io/openmtp'

  app 'OpenMTP.app'

  zap trash: [
               '~/.io.ganeshrvel',
               '~/Library/Application Support/OpenMTP',
               '~/Library/Preferences/io.ganeshrvel.openmtp.plist',
             ]
end
