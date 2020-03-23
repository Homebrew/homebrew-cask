cask 'livechat' do
  version '9.0.9'
  sha256 'f94d07fe544324eba31e8c25e78fd04f8b37707ff51155ab9972fd7f5910eff2'

  url 'https://www.livechatinc.com/download/Mac/LiveChat.dmg'
  appcast 'https://dal-livechat-main-web.s3.amazonaws.com/download/Mac/latest-mac.yml'
  name 'LiveChat'
  homepage 'https://www.livechatinc.com/'

  app 'LiveChat.app'
end
