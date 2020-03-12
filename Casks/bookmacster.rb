cask 'bookmacster' do
  version '2.10.17'
  sha256 '8de7102d5cc599569f0172b6bb96bfbc93b286713984931fbf0fc0341cdf1ab7'

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
