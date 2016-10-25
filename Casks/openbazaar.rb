cask 'openbazaar' do
  version '1.1.8'
  sha256 'c45e2852de2ab0700810a51d7ff0bf8c5a5d1c2d26215ad6ae872eccfb7b23eb'

  # github.com/OpenBazaar/OpenBazaar-Installer was verified as official when first introduced to the cask
  url "https://github.com/OpenBazaar/OpenBazaar-Installer/releases/download/v#{version}/OpenBazaar-#{version}.dmg"
  appcast 'https://github.com/OpenBazaar/OpenBazaar-Installer/releases.atom',
          checkpoint: '107daeb95f4e1ee1a68a045eead1c779ff0086532903788551541f781ecac5f9'
  name 'OpenBazaar'
  homepage 'https://openbazaar.org/'

  app 'OpenBazaar.app'

  zap delete: [
                '~/Library/Application Support/OpenBazaar',
                '~/Library/Caches/OpenBazaar',
                '~/Library/Caches/com.electron.openbazaar',
                '~/Library/Preferences/com.electron.openbazaar.plist',
                '~/Library/Application Support/com.electron.openbazaar.ShipIt',
              ]
end
