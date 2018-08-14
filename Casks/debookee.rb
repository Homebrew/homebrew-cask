cask 'debookee' do
  version '6.3.0'
  sha256 'e87cc30b09ac069acd3f41b6b73cfbb446afeb89024298d2a62d7f8cb9c8feed'

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
