cask 'kap' do
  version '3.2.1'
  sha256 'ae5f3c3f408467edd5981b89a363dbc5a6b1df1cfaa143880b93e0a6638599d0'

  # github.com/wulkano/kap/ was verified as official when first introduced to the cask
  url "https://github.com/wulkano/kap/releases/download/v#{version.major_minor_patch}/Kap-#{version}.dmg"
  appcast 'https://github.com/wulkano/kap/releases.atom'
  name 'Kap'
  homepage 'https://getkap.co/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Kap.app'

  zap trash: [
               '~/Library/Application Support/Kap',
               '~/Library/Caches/com.wulkano.kap',
               '~/Library/Caches/com.wulkano.kap.ShipIt',
               '~/Library/Cookies/com.wulkano.kap.binarycookies',
               '~/Library/Preferences/com.wulkano.kap.helper.plist',
               '~/Library/Preferences/com.wulkano.kap.plist',
               '~/Library/Saved Application State/com.wulkano.kap.savedState',
             ]
end
