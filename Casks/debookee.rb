cask 'debookee' do
  version '6.2.0'
  sha256 '3b40caf5c9662d6dcf127b2d05474fa6d855fdc944558dfbb243ea3b0df5ced5'

  # iwaxx.com/debookee was verified as official when first introduced to the cask
  url 'https://www.iwaxx.com/debookee/debookee.zip'
  appcast 'https://www.iwaxx.com/debookee/appcast.php',
          checkpoint: '78654d9057ca16b745a36d283846fa2532d2dc0669b0d7eb02eac074bba6f89c'
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
