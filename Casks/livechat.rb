cask 'livechat' do
  version '9.0.6'
  sha256 '55b8bc5793f7dc0aa220ff6e4df61ebb7d8102b42374b62d7821f032eef10668'

  url 'https://www.livechatinc.com/download/Mac/LiveChat.dmg'
  appcast 'https://rink.hockeyapp.net/api/2/apps/e64c8a48eb174b2fab6afdbd4ff76d31.rss'
  name 'LiveChat'
  homepage 'https://www.livechatinc.com/'

  app 'LiveChat.app'
end
