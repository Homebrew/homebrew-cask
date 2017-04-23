cask 'chatmate-for-whatsapp' do
  version :latest
  sha256 :no_check

  # dl.devmate.com/net.coldx.mac.WhatsApp was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/net.coldx.mac.WhatsApp/ChatMateforWhatsApp.dmg'
  name 'ChatMate for WhatsApp'
  homepage 'https://chatmate.io/'

  app 'ChatMate for WhatsApp.app'

  zap delete: [
                '~/Library/Application Support/ChatMate for WhatsApp',
                '~/Library/Application Support/ColdX/net.coldx.mac.WhatsApp',
                '~/Library/Caches/net.coldx.mac.WhatsApp',
                '~/Library/Cookies/net.coldx.mac.WhatsApp.binarycookies',
                '~/Library/Preferences/net.coldx.mac.WhatsApp.plist',
                '~/Library/WebKit/net.coldx.mac.WhatsApp',
              ]
end
