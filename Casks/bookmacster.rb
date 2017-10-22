cask 'bookmacster' do
  version :latest
  sha256 :no_check

  url 'https://sheepsystems.com/bookmacster/BookMacster.dmg'
  name 'BookMacster'
  homepage 'https://sheepsystems.com/products/bookmacster.html'

  auto_updates true

  app 'BookMacster.app'

  zap delete: [
                '~/Library/Caches/com.sheepsystems.BookMacster',
                '~/Library/Saved Application State/com.sheepsystems.BookMacster.savedState',
              ],
      trash:  [
                '~/Library/Application Support/BookMacster',
                '~/Library/Preferences/com.sheepsystems.BookMacster.plist',
              ]
end
