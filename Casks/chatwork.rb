cask 'chatwork' do
  version :latest
  sha256 :no_check

  # link.chat-work.com was verified as official when first introduced to the cask
  url 'http://link.chat-work.com/desktop_app_mac'
  name 'ChatWork'
  homepage 'https://www.chatwork.com/'

  auto_updates true

  app 'ChatWork.app'
end
