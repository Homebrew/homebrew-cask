cask 'bookmacster' do
  version :latest
  sha256 :no_check

  url 'https://sheepsystems.com/bookmacster/BookMacster.zip'
  name 'BookMacster'
  homepage 'https://sheepsystems.com/products/bookmacster.html'

  auto_updates true

  app 'BookMacster.app'

  zap trash: [
               '~/Library/Application Support/BookMacster',
               '~/Library/Caches/com.sheepsystems.BookMacster',
               '~/Library/Preferences/com.sheepsystems.BookMacster.plist',
               '~/Library/Saved Application State/com.sheepsystems.BookMacster.savedState',
             ]
end
