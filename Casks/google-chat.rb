cask 'google-chat' do
  version '18.11.171'
  sha256 '06e9fe5cdedc8ead3c01f0009d3b046c4a3b3672cb103f98389fc5d2d39d4708'

  url "https://dl.google.com/chat/#{version}/InstallHangoutsChat.dmg"
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
