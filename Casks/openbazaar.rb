cask 'openbazaar' do
  version '1.1.1'
  sha256 'c8adaac44a722b6bf44329eb9c7d7faf7eac1eab7dd202dc22476263df818571'

  # github.com/OpenBazaar/OpenBazaar-Installer was verified as official when first introduced to the cask
  url "https://github.com/OpenBazaar/OpenBazaar-Installer/releases/download/v#{version}/OpenBazaar-#{version}.dmg"
  appcast 'https://github.com/OpenBazaar/OpenBazaar-Installer/releases.atom',
          checkpoint: '081f54700c8995edb8255ef33d9743a4436a5efcc65e2c182c608a2664bb029b'
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
