cask 'livechat' do
  version '9.1.0'
  sha256 '373449d546c2c138fc1d7dcc61fdec0cdaffb909727aadfa71d1daf485b6022d'

  url 'https://www.livechatinc.com/download/Mac/LiveChat.dmg'
  appcast 'https://dal-livechat-main-web.s3.amazonaws.com/download/Mac/latest-mac.yml'
  name 'LiveChat'
  homepage 'https://www.livechatinc.com/'

  app 'LiveChat.app'
end
