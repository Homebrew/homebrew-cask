cask 'bookmacster' do
  version '2.9.21'
  sha256 '8fee026b0b7bb1a7cd9499df03ea526066ac9817986c0306b374bce74d06622e'

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
