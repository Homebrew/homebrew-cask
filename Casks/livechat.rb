cask :v1 => 'livechat' do
  version :latest
  sha256 :no_check

  url 'http://www.livechatinc.com/download/Mac/LiveChat.dmg'
  name 'LiveChat'
  homepage 'http://livechatinc.com'
  license :commercial

  app 'LiveChat.app'
end
