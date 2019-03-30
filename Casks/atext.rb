cask 'atext' do
  version '2.32'
  sha256 'd696e89477719046d01e42ed6c02a0ddb102f7f54615da9c940123a902b50eec'

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
