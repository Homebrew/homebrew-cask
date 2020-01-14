cask 'openbazaar' do
  version '2.3.8'
  sha256 '0d0e7bba43b9511f3cb17549160e8b3f72092552699afd25fd2f60741fd533fc'

  # github.com/OpenBazaar/openbazaar-desktop was verified as official when first introduced to the cask
  url "https://github.com/OpenBazaar/openbazaar-desktop/releases/download/v#{version}/OpenBazaar#{version.major}-#{version}.dmg"
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
