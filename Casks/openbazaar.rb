cask 'openbazaar' do
  version '2.2.1'
  sha256 'e1d7be9fdff3dfd453d5a283118cfa95658c003e7747b455a44736b014304255'

  # github.com/OpenBazaar/openbazaar-desktop was verified as official when first introduced to the cask
  url "https://github.com/OpenBazaar/openbazaar-desktop/releases/download/v#{version}/OpenBazaar#{version.major}-#{version.major_minor_patch}.dmg"
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
