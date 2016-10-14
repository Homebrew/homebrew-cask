cask 'livechat' do
  version :latest
  sha256 :no_check

  url 'https://www.livechatinc.com/download/Mac/LiveChat.dmg'
  name 'LiveChat'
  homepage 'https://livechatinc.com'

  app 'LiveChat.app'
end
