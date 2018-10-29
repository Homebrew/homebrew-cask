cask 'google-chat' do
  version '18.10.101'
  sha256 '7ee0d17c7829394c2b8384e1a2179e0b9a26f5b67b1420c1161722784504b741'

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
