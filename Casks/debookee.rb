cask 'debookee' do
  version '7.0.3'
  sha256 '03b07ca22362c08f3ebe21d2a245e7fca35cdb8c85888e355547a1c54092156e'

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
