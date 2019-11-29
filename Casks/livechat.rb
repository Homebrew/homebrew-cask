cask 'livechat' do
  version '9.0.7'
  sha256 '34a4941b7429e094770d55dd864de0a4d795c8e875aa36344921e89d36d94d06'

  url 'https://www.livechatinc.com/download/Mac/LiveChat.dmg'
  appcast 'https://dal-livechat-main-web.s3.amazonaws.com/download/Mac/latest-mac.yml'
  name 'LiveChat'
  homepage 'https://www.livechatinc.com/'

  app 'LiveChat.app'
end
