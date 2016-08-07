cask 'chatwork' do
  version :latest
  sha256 :no_check

  url 'http://desktop-app.chatwork.com/installer/ChatWork-darwin-setup.zip'
  name 'ChatWork'
  homepage 'http://www.chatwork.com'
  license :closed

  auto_updates true

  app 'ChatWork.app'
end
