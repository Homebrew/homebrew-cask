cask 'chatmate-for-whatsapp' do
  version '4.2.4,470:1518834547'
  sha256 '0959e533dad25ad0d8fa1ba6e59e55b0e7ef6c97d8a28a59dd4fdaca9f46d4fd'

  # dl.devmate.com/net.coldx.mac.WhatsApp was verified as official when first introduced to the cask
  url "https://dl.devmate.com/net.coldx.mac.WhatsApp/#{version.after_comma.before_colon}/#{version.after_colon}/ChatMateforWhatsApp-#{version.after_comma.before_colon}.zip"
  appcast 'https://updates.devmate.com/net.coldx.mac.WhatsApp.xml'
  name 'ChatMate for WhatsApp'
  homepage 'https://chatmate.io/'

  app 'ChatMate for WhatsApp.app'

  zap trash: [
               '~/Library/Application Support/ChatMate for WhatsApp',
               '~/Library/Application Support/ColdX/net.coldx.mac.WhatsApp',
               '~/Library/Caches/net.coldx.mac.WhatsApp',
               '~/Library/Cookies/net.coldx.mac.WhatsApp.binarycookies',
               '~/Library/Preferences/net.coldx.mac.WhatsApp.plist',
               '~/Library/WebKit/net.coldx.mac.WhatsApp',
             ]
end
