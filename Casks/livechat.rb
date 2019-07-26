cask 'livechat' do
  version '3.6.5'
  sha256 'a807030bf49acaec1e35c4e74a3e1912c73f03cd6502cac280798a6bee0a446e'

  url 'https://www.livechatinc.com/download/Mac/LiveChat.dmg'
  appcast 'https://rink.hockeyapp.net/api/2/apps/e64c8a48eb174b2fab6afdbd4ff76d31.rss'
  name 'LiveChat'
  homepage 'https://www.livechatinc.com/'

  app 'LiveChat.app'
end
