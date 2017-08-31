cask 'openbazaar' do
  version '1.1.13'
  sha256 'c3317680f614bd2d1fa4e12b6057e2c0dff4bb21b3184316bd22ed9552b814a3'

  # github.com/OpenBazaar/OpenBazaar-Installer was verified as official when first introduced to the cask
  url "https://github.com/OpenBazaar/OpenBazaar-Installer/releases/download/v#{version}/OpenBazaar-#{version}.dmg"
  appcast 'https://github.com/OpenBazaar/OpenBazaar-Installer/releases.atom',
          checkpoint: 'fe8b7071741007cc26b5787c4f5107245695b37435b70d9579c809206eb682c7'
  name 'OpenBazaar'
  homepage 'https://www.openbazaar.org/'

  app 'OpenBazaar.app'

  zap delete: [
                '~/Library/Application Support/OpenBazaar',
                '~/Library/Caches/OpenBazaar',
                '~/Library/Caches/com.electron.openbazaar',
                '~/Library/Preferences/com.electron.openbazaar.plist',
                '~/Library/Application Support/com.electron.openbazaar.ShipIt',
              ]
end
