cask 'bookmacster' do
  version '2.9.12'
  sha256 'defe6f1e2dfe5def4d86f0b58834e7b101400a5508613a3d94d9dfa042eba9ac'

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
