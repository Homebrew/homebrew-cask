cask 'kap' do
  version '2.1.1'
  sha256 '1c04b17bb611a664c570021648e743fe8fa1ac4b7b82f57ac6796da4691374b2'

  # github.com/wulkano/kap was verified as official when first introduced to the cask
  url "https://github.com/wulkano/kap/releases/download/v#{version.major_minor_patch}/Kap-#{version}.dmg"
  appcast 'https://github.com/wulkano/kap/releases.atom',
          checkpoint: '49710199f0fd6a59df5a01c11a64fa6f0fc1514d7ff476efe135aec3f9e367b1'
  name 'Kap'
  homepage 'https://getkap.co/'

  auto_updates true
  depends_on macos: '>= :sierra'

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
