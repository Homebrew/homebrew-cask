cask 'livechat' do
  version '9.0.10'
  sha256 '3f97abb110c2449f7f3d90fb3d77730007b123232109b41885fb6d4e19258510'

  url 'https://www.livechatinc.com/download/Mac/LiveChat.dmg'
  appcast 'https://dal-livechat-main-web.s3.amazonaws.com/download/Mac/latest-mac.yml'
  name 'LiveChat'
  homepage 'https://www.livechatinc.com/'

  app 'LiveChat.app'
end
