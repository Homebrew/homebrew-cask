cask 'livechat' do
  version '9.0.8'
  sha256 'ad9f350f4313bc2054a1bbc3bf2fe2f18f73c7d4c0e6e74c5c168a620548c75a'

  url 'https://www.livechatinc.com/download/Mac/LiveChat.dmg'
  appcast 'https://dal-livechat-main-web.s3.amazonaws.com/download/Mac/latest-mac.yml'
  name 'LiveChat'
  homepage 'https://www.livechatinc.com/'

  app 'LiveChat.app'
end
