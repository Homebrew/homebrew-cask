cask 'atext' do
  version '2.26'
  sha256 '8c6c91dc3587782bcce996ec5e483c5b254ee42717a7725eaccd30f0ed9e47a6'

  url 'https://www.trankynam.com/atext/downloads/aText.dmg'
  appcast 'https://www.trankynam.com/atext/aText-Appcast.xml'
  name 'aText'
  homepage 'https://www.trankynam.com/atext/'

  auto_updates true

  app 'aText.app'

  zap trash: [
               '~/Library/Application Scripts/com.trankynam.aText',
               '~/Library/Application Support/com.trankynam.aText',
               '~/Library/Caches/com.trankynam.aText',
               '~/Library/Containers/com.trankynam.aText',
               '~/Library/Cookies/com.trankynam.aText.binarycookies',
               '~/Library/Preferences/com.trankynam.aText.plist',
               '~/Library/Saved Application State/com.trankynam.aText.savedState',
             ]
end
