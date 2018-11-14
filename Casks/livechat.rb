cask 'livechat' do
  version '3.6.2'
  sha256 'c1594987737b2ef6403018608a186ee6231674a43dd894043a513462a090d848'

  url 'https://www.livechatinc.com/download/Mac/LiveChat.dmg'
  appcast 'https://www.livechatinc.com/download/Mac/appcast-3.x.xml'
  name 'LiveChat'
  homepage 'https://www.livechatinc.com/'

  app 'LiveChat.app'
end
