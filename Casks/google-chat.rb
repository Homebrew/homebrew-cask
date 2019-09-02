cask 'google-chat' do
  version '19.3.141'
  sha256 'ea09e8e1e42b526f2deee7fa78ca4886ebd36ec90a4b79a22b31c1a550491a04'

  url "https://dl.google.com/chat/#{version}/InstallHangoutsChat.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://dl.google.com/chat/latest/InstallHangoutsChat.dmg'
  name 'Chat'
  homepage 'https://gsuite.google.com/products/chat/'

  app 'Chat.app'

  zap trash: [
               '~/Library/Logs/Chat',
               '~/Library/Saved Application State/com.google.chat.savedState',
               '~/Library/Application Support/Chat',
               '~/Library/Preferences/com.google.chat*',
             ]
end
