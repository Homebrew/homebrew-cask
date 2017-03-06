cask 'kap' do
  version '1.0.1,1'
  sha256 'f51902982b80925b6cf1fe81c920d4a3a0bb841dfb5bbae5879f934beeb2eae7'

  # github.com/wulkano/kap was verified as official when first introduced to the cask
  url "https://github.com/wulkano/kap/releases/download/v#{version.before_comma}/Kap-#{version.before_comma}.#{version.after_comma}.dmg"
  appcast 'https://github.com/wulkano/kap/releases.atom',
          checkpoint: '40f3eb434165d572e191c7e23fe53b7f6c7c1359f2f6f976e993a9802fe7f8ea'
  name 'Kap'
  homepage 'https://getkap.co/'

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
