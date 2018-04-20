cask 'kap' do
  version '2.1.2'
  sha256 '422096dc0dca33fb1a92366f56b76bf1ff7c25529bae1e8f18b5416856832220'

  # github.com/wulkano/kap was verified as official when first introduced to the cask
  url "https://github.com/wulkano/kap/releases/download/v#{version.major_minor_patch}/Kap-#{version}.dmg"
  appcast 'https://github.com/wulkano/kap/releases.atom',
          checkpoint: '592622a90fdd3ce8429213ee18fabcc5fc88a9d394d7a354231051dd4cc267c3'
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
