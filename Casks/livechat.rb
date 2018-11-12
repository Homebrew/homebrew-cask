cask 'livechat' do
  version :latest
  sha256 :no_check

  url 'https://www.livechatinc.com/download/Mac/LiveChat.dmg'
  appcast 'https://www.livechatinc.com/download/Mac/appcast-3.x.xml'
  name 'LiveChat'
  homepage 'https://www.livechatinc.com/'

  app 'LiveChat.app'
end
