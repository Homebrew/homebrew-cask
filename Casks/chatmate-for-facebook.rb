cask 'chatmate-for-facebook' do
  version :latest
  sha256 :no_check

  # dl.devmate.com/net.coldx.mac.Facebook was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/net.coldx.mac.Facebook/ChatMateforFacebook.dmg'
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
