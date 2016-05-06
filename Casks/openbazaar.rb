cask 'openbazaar' do
  version '1.1.4'
  sha256 'ec5367ce0b9c8c4601432745848507591671f75a51595c0f402163d8fcf0efca'

  # github.com/OpenBazaar/OpenBazaar-Installer was verified as official when first introduced to the cask
  url "https://github.com/OpenBazaar/OpenBazaar-Installer/releases/download/v#{version}/OpenBazaar-#{version}.dmg"
  appcast 'https://github.com/OpenBazaar/OpenBazaar-Installer/releases.atom',
          checkpoint: 'abb16a0a9005fdaa8c78bd8baacccc4ce9cea4574d7d028516cb8451f1b08653'
  name 'OpenBazaar'
  homepage 'https://openbazaar.org/'
  license :mit

  app 'OpenBazaar.app'

  zap delete: [
                '~/Library/Application Support/OpenBazaar',
                '~/Library/Caches/OpenBazaar',
                '~/Library/Caches/com.electron.openbazaar',
                '~/Library/Preferences/com.electron.openbazaar.plist',
                '~/Library/Application Support/com.electron.openbazaar.ShipIt',
              ]
end
