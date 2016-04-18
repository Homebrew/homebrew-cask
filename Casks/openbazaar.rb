cask 'openbazaar' do
  version '1.1.3'
  sha256 '9cc1e8548634ef272a74c153580363008eaeebfee35189776d33da1816a6a111'

  # github.com/OpenBazaar/OpenBazaar-Installer was verified as official when first introduced to the cask
  url "https://github.com/OpenBazaar/OpenBazaar-Installer/releases/download/v#{version}/OpenBazaar-#{version}.dmg"
  appcast 'https://github.com/OpenBazaar/OpenBazaar-Installer/releases.atom',
          checkpoint: '5806b280d2073c5eb749d55daed0ffbd3ac9254209770ad5cb56b81d260bb0da'
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
