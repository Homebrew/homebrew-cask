cask 'kap' do
  version '1.0.0'
  sha256 '04f3a950988fb60b6f52b9962ad8adccd9786a4b00e2ae6638c6a3130788afcd'

  # github.com/wulkano/kap was verified as official when first introduced to the cask
  url "https://github.com/wulkano/kap/releases/download/v#{version}/Kap-#{version}.dmg"
  appcast 'https://github.com/wulkano/kap/releases.atom',
          checkpoint: 'ec1b30834995b8ba6ee90f36a5e5aee894ec7cf8a879149ea9ac06cd51ac6f89'
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
