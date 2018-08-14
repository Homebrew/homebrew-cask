cask 'openbazaar' do
  version '2.2.3'
  sha256 'e5c5786beef26ee3f3f4ab2dec979f6e8877e8b132f8f2f71bde93ef9aeda1f0'

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
