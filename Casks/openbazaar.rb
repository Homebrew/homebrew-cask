cask 'openbazaar' do
  version '1.1.2'
  sha256 'c85f8241d08d537191722ec2871fe5f9f3294a47b94d4582ad826513ceff9cda'

  # github.com/OpenBazaar/OpenBazaar-Installer was verified as official when first introduced to the cask
  url "https://github.com/OpenBazaar/OpenBazaar-Installer/releases/download/v#{version}/OpenBazaar-#{version}.dmg"
  appcast 'https://github.com/OpenBazaar/OpenBazaar-Installer/releases.atom',
          checkpoint: '9b54c1811b424a4182081ae3ea249ab1aad7d7481264878eab6c5990048a84f0'
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
