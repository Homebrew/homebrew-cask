cask 'livechat' do
  version :latest
  sha256 :no_check

  url 'http://www.livechatinc.com/download/Mac/LiveChat.dmg'
  name 'LiveChat'
  homepage 'https://livechatinc.com'
  license :commercial

  app 'LiveChat.app'
end
