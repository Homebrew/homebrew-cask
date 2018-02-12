cask 'kap' do
  version '2.0.0'
  sha256 '02be9b2d4fdff6846686b33d24e95558da9a029370b0bb3bb75babab135d3a43'

  # github.com/wulkano/kap was verified as official when first introduced to the cask
  url "https://github.com/wulkano/kap/releases/download/v#{version.major_minor_patch}/Kap-#{version}.dmg"
  appcast 'https://github.com/wulkano/kap/releases.atom',
          checkpoint: 'c42f603ddd744a11dbcdef5fdbe41ac0e542c9e15d37fc3fec935a28a71215ee'
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
