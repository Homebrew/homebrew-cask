cask 'chat' do
  version '19.1.281'
  sha256 '30ac3007e565c8ac1f57c92291c9c58dec6a1d303eb19dd7c8c8cc080bb7949b'

  url "https://dl.google.com/chat/#{version}/InstallHangoutsChat.dmg"
  name 'Google Hangouts Chat'
  homepage 'https://gsuite.google.com/products/chat/'

  app 'Chat.app'
end
