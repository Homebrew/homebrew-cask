cask 'google-chat' do
  version '20.1.71'
  sha256 '2c74b990d4db034aa856b66d2cb055aa2b92f30ea4105380e192fab8b90f1762'

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
