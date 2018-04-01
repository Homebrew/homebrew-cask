cask 'atext' do
  version '2.22.3'
  sha256 '553957237e7dbbcc25208ba030f2efc1ce428efef93766b12141ba665f528edd'

  url 'https://www.trankynam.com/atext/downloads/aText.dmg'
  appcast 'https://www.trankynam.com/atext/aText-Appcast.xml',
          checkpoint: '01816bad0f3226f4d9941b5c889f7042717486b5aeb5e3847b8538d90ea939a9'
  name 'aText'
  homepage 'https://www.trankynam.com/atext/'

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
