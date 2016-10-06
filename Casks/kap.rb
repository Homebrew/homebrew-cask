cask 'kap' do
  version '0.1.0'
  sha256 'a16e58f73716618d32c35a68c4013384a245b8f36bb27e19729c3836b875d951'

  # github.com/wulkano/kap was verified as official when first introduced to the cask
  url "https://github.com/wulkano/kap/releases/download/v#{version}/Kap-#{version}.dmg"
  appcast 'https://github.com/wulkano/kap/releases.atom',
          checkpoint: '149d3fc47939fc420857f890b4e3230f534dbd5ceb2351ac5114f65f05f991f6'
  name 'Kap'
  homepage 'https://getkap.co/'
  license :mit

  app 'Kap.app'

  zap delete: [
                '~/Library/Preferences/com.wulkano.kap.plist',
                '~/Library/Preferences/com.wulkano.kap.helper.plist',
                '~/Library/Application Support/Kap',
                '~/Library/Saved Application State/com.wulkano.kap.savedState',
                '~/Library/Caches/com.wulkano.kap',
                '~/Library/Caches/com.wulkano.kap.ShipIt',
              ]
end
