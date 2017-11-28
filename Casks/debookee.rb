cask 'debookee' do
  version '6.0.1'
  sha256 '91a22725d62e3aab9485e354e50f1419cd76f9bf5ee1d310d4515ad45c1623dc'

  # iwaxx.com/debookee was verified as official when first introduced to the cask
  url 'https://www.iwaxx.com/debookee/debookee.zip'
  appcast 'https://www.iwaxx.com/debookee/appcast.php',
          checkpoint: '26a2d6527de7d97c8aab3ffde56903adc8e2fcde02e3873458015a39f27d2fc2'
  name 'Debookee'
  homepage 'https://debookee.com/'

  depends_on macos: '>= :sierra'

  app 'Debookee.app'

  uninstall delete:    '/Library/PrivilegedHelperTools/com.iwaxx.Debookee.PacketTool',
            launchctl: 'com.iwaxx.Debookee.PacketTool'

  zap trash: [
               '~/Library/Application Support/com.iwaxx.Debookee',
               '~/Library/Caches/com.iwaxx.Debookee',
               '~/Library/Cookies/com.iwaxx.Debookee.binarycookies',
               '~/Library/Logs/Debookee',
               '~/Library/Preferences/com.iwaxx.Debookee.plist',
               '~/Library/Saved Application State/com.iwaxx.Debookee.savedState',
               '~/Library/WebKit/com.iwaxx.Debookee',
             ]
end
