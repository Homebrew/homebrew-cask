cask 'debookee' do
  version '7.2.1'
  sha256 'd8ea4f726894cae77fe59d38d2f05a5263adaf21cd5edeb27880778a5c915fbc'

  # iwaxx.com/debookee was verified as official when first introduced to the cask
  url 'https://www.iwaxx.com/debookee/debookee.zip'
  appcast 'https://www.iwaxx.com/debookee/appcast.php'
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
