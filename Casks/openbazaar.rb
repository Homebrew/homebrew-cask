cask 'openbazaar' do
  version '1.1.5'
  sha256 '1da6c90497980d1865d6c22701293bea7794661fc2b6fc1f4307a3a52876fa20'

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
