cask 'openbazaar' do
  version '1.1.10'
  sha256 'd1cf0c239759fc40427beb896624ee98635a568be8f5f6c6418593bfe89225e7'

  # github.com/OpenBazaar/OpenBazaar-Installer was verified as official when first introduced to the cask
  url "https://github.com/OpenBazaar/OpenBazaar-Installer/releases/download/v#{version}/OpenBazaar-#{version}.dmg"
  appcast 'https://github.com/OpenBazaar/OpenBazaar-Installer/releases.atom',
          checkpoint: '8f6bfaad0d9c06e5e4664e0dc2e2b6fdc09c2bfca597063f722bea5ed0193151'
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
