cask 'kap' do
  version '1.0.1.1'
  sha256 'f51902982b80925b6cf1fe81c920d4a3a0bb841dfb5bbae5879f934beeb2eae7'

  # github.com/wulkano/kap was verified as official when first introduced to the cask
  url "https://github.com/wulkano/kap/releases/download/v#{version.major_minor_patch}/Kap-#{version}.dmg"
  appcast 'https://github.com/wulkano/kap/releases.atom',
          checkpoint: '52c44a145740d866ad26315f5d9c6d310307d76305d66d2f91cf2c04c0b020c3'
  name 'Kap'
  homepage 'https://getkap.co/'

  auto_updates true

  app 'Kap.app'

  zap trash: [
               '~/Library/Preferences/com.wulkano.kap.plist',
               '~/Library/Preferences/com.wulkano.kap.helper.plist',
               '~/Library/Application Support/Kap',
               '~/Library/Saved Application State/com.wulkano.kap.savedState',
               '~/Library/Caches/com.wulkano.kap',
               '~/Library/Caches/com.wulkano.kap.ShipIt',
             ]
end
