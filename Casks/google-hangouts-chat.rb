cask 'google-hangouts-chat' do
  version :latest
  sha256 :no_check

  url 'https://dl.google.com/chat/latest/InstallHangoutsChat.dmg'
  name 'Google Hangouts Chat'
  homepage 'https://get.google.com/chat/'

  app 'Chat.app'
end
