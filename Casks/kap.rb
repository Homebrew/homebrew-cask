cask 'kap' do
  version '1.0.1.1'
  sha256 'f51902982b80925b6cf1fe81c920d4a3a0bb841dfb5bbae5879f934beeb2eae7'

  # github.com/wulkano/kap was verified as official when first introduced to the cask
  url "https://github.com/wulkano/kap/releases/download/v#{version.major_minor_patch}/Kap-#{version}.dmg"
  appcast 'https://github.com/wulkano/kap/releases.atom',
          checkpoint: 'e67cf1cab1106059a7d545b04c56731ef398c41fb0c692138a4579f0d97dc890'
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
