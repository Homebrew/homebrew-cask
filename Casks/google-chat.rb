cask 'google-chat' do
  version '19.9.101'
  sha256 'a02ab1c58b8af0b2bd3e0cbb6b16a14979befd4be32458823ea188f3565bea32'

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
