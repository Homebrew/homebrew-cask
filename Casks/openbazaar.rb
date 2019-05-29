cask 'openbazaar' do
  version '2.3.3'
  sha256 'd4e79cc39e2ba13af23816305d2f587b61f83cfedad3988b9eb8047727209ab7'

  # github.com/OpenBazaar/openbazaar-desktop was verified as official when first introduced to the cask
  url "https://github.com/OpenBazaar/openbazaar-desktop/releases/download/v#{version.before_comma}/OpenBazaar#{version.major}-#{version}.dmg"
  appcast 'https://github.com/OpenBazaar/openbazaar-desktop/releases.atom'
  name "OpenBazaar#{version.major}"
  homepage 'https://www.openbazaar.org/'

  app "OpenBazaar#{version.major}.app"

  zap trash: [
               "~/Library/Application Support/OpenBazaar#{version.major_minor}",
               "~/Library/Caches/com.electron.openbazaar#{version.major}",
               "~/Library/Caches/com.electron.openbazaar#{version.major}.ShipIt",
               '~/Library/Caches/com.electron.openbazaar',
               "~/Library/Preferences/com.electron.openbazaar#{version.major}.helper.plist",
               '~/Library/Preferences/com.electron.openbazaar.plist',
             ]
end
