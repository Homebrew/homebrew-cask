cask 'kap' do
  version '2.0.0'
  sha256 '02be9b2d4fdff6846686b33d24e95558da9a029370b0bb3bb75babab135d3a43'

  # github.com/wulkano/kap was verified as official when first introduced to the cask
  url "https://github.com/wulkano/kap/releases/download/v#{version.major_minor_patch}/Kap-#{version}.dmg"
  appcast 'https://github.com/wulkano/kap/releases.atom',
          checkpoint: '3f1b0832ced861301ed1104cd06d432a87c0108c55b387bebb04f3edbc7e6e64'
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
