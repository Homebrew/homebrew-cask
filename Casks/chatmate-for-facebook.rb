cask 'chatmate-for-facebook' do
  version '4.2.4,470:1518834838'
  sha256 '790fedb66aeaf1acc34df97f204e19841035bf8f74cc7a4299cb9989c15bcf06'

  # dl.devmate.com/net.coldx.mac.Facebook was verified as official when first introduced to the cask
  url "https://dl.devmate.com/net.coldx.mac.Facebook/#{version.after_comma.before_colon}/#{version.after_colon}/ChatMateforFacebook-#{version.after_comma.before_colon}.zip"
  appcast 'https://updates.devmate.com/net.coldx.mac.Facebook.xml'
  name 'ChatMate for Facebook'
  homepage 'https://chatmate.io/mac/facebook/'

  app 'ChatMate for Facebook.app'

  zap trash: [
               '~/Library/Application Support/ChatMate for Facebook',
               '~/Library/Application Support/ColdX/net.coldx.mac.Facebook',
               '~/Library/Caches/net.coldx.mac.Facebook',
               '~/Library/Cookies/net.coldx.mac.Facebook.binarycookies',
               '~/Library/Logs/net.coldx.mac.Facebook',
               '~/Library/Preferences/net.coldx.mac.Facebook.plist',
               '~/Library/WebKit/net.coldx.mac.Facebook',
             ]
end
