cask 'openbazaar' do
  version '1.1.9'
  sha256 '73931066124823b4cf206d60e9b7d6dd4a8743c49542b293c3b6eba7d811da29'

  # github.com/OpenBazaar/OpenBazaar-Installer was verified as official when first introduced to the cask
  url "https://github.com/OpenBazaar/OpenBazaar-Installer/releases/download/v#{version}/OpenBazaar-#{version}.dmg"
  appcast 'https://github.com/OpenBazaar/OpenBazaar-Installer/releases.atom',
          checkpoint: 'ddf682fa446e899200b0f9689389b4418064091f61b7cc75f20669fb5bb4d985'
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
