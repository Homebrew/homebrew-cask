cask 'bookmacster' do
  version '2.10.18'
  sha256 '9f38154cc2b2a5ac2de7f2b72d7840c9b959500f3d4a07260ae9656558c51621'

  url 'https://sheepsystems.com/bookmacster/BookMacster.zip'
  appcast 'https://sheepsystems.com/bookmacster/appcast.xml'
  name 'BookMacster'
  homepage 'https://sheepsystems.com/products/bookmacster.html'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'BookMacster.app'

  zap trash: [
               '~/Library/Application Support/BookMacster',
               '~/Library/Caches/com.sheepsystems.BookMacster',
               '~/Library/Preferences/com.sheepsystems.BookMacster.plist',
               '~/Library/Saved Application State/com.sheepsystems.BookMacster.savedState',
             ]
end
