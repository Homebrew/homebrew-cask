cask 'kap' do
  version '2.2.0'
  sha256 'a2fbef6e97387586c4257de6c7efa428b35b3ae9e74df4ebd6576fc19e4c42d0'

  # github.com/wulkano/kap was verified as official when first introduced to the cask
  url "https://github.com/wulkano/kap/releases/download/v#{version.major_minor_patch}/Kap-#{version}.dmg"
  appcast 'https://github.com/wulkano/kap/releases.atom',
          checkpoint: '5abe2576ffd532ede2fffc31ca0dd6d6ff185c0f6d75b70506d1c1e598ef52a0'
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
