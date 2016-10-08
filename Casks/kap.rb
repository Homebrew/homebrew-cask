cask 'kap' do
  version '0.2.0'
  sha256 '0fec87c6c4ee50139cf1f344b48554e428986d3e8c1143505c2ea7e01dfa18c0'

  # github.com/wulkano/kap was verified as official when first introduced to the cask
  url "https://github.com/wulkano/kap/releases/download/v#{version}/Kap-#{version}.dmg"
  appcast 'https://github.com/wulkano/kap/releases.atom',
          checkpoint: '1c7c4d1574c902e55b24082fa7040735fc1bc2d021af7556c67f079dd7225c77'
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
