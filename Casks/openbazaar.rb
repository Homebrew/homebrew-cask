cask 'openbazaar' do
  version '1.1.11'
  sha256 '89d3c9bf6e5d625cc77b22a8247cfb921fb3452c7baef116408881f6d843165b'

  # github.com/OpenBazaar/OpenBazaar-Installer was verified as official when first introduced to the cask
  url "https://github.com/OpenBazaar/OpenBazaar-Installer/releases/download/v#{version}/OpenBazaar-#{version}.dmg"
  appcast 'https://github.com/OpenBazaar/OpenBazaar-Installer/releases.atom',
          checkpoint: '5957307c99117948ab51282d4ab9507f39b68f33ba8d2c1566d17f13c8846360'
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
