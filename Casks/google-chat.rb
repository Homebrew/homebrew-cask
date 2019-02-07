cask 'google-chat' do
  version '19.1.281'
  sha256 '30ac3007e565c8ac1f57c92291c9c58dec6a1d303eb19dd7c8c8cc080bb7949b'

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
