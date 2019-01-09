cask 'bookmacster' do
  version '2.9.7'
  sha256 '56ef20442c6ed572c107f5f1f3924d2a213b9931cbee13d70a3e752fa05256af'

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
