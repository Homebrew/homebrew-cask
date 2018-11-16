cask 'google-chat' do
  version '18.11.11'
  sha256 '77c32d6c3bd949300b34a0273eaaea6aadd6d16e4dfb65f678d6e9aaba0c3eac'

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
