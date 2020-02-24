cask 'google-chat' do
  version '20.1.301'
  sha256 '19d9c8a9be6fc5dffd3cb5acc287362421e3907428f3bc65950cc07803dde74b'

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
