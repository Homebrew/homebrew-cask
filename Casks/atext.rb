cask 'atext' do
  version '2.30.3'
  sha256 '1a76f8963f30c58a1e175ca1d9ff8e649b692c70d60dc64b7490c5772521536f'

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
