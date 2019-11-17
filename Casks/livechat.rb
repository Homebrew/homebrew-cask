cask 'livechat' do
  version '9.0.6'
  sha256 '55b8bc5793f7dc0aa220ff6e4df61ebb7d8102b42374b62d7821f032eef10668'

  url 'https://www.livechatinc.com/download/Mac/LiveChat.dmg'
  appcast 'https://s3.amazonaws.com/dal-livechat-main-web/download/Mac/latest-mac.yml'
  name 'LiveChat'
  homepage 'https://www.livechatinc.com/'

  app 'LiveChat.app'
end
