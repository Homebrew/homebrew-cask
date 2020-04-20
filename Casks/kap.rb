cask 'kap' do
  version '3.2.0'
  sha256 '3944d7a0ec9ad386e26c10f7e49827ad099e33a8afb5f82f110e48b315a7b017'

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
