cask 'qiyimedia' do
  version '5.4.10'
  sha256 '6132c2644c35be55bd8c45416404986712c8ec8d03a98a4d9805fced8dd8c3d2'

  url 'https://mbdapp.iqiyi.com/j/ot/iQIYIMedia_000.dmg'
  appcast 'https://app.iqiyi.com/mac/player/index.html'
  name '爱奇艺视频'
  homepage 'https://app.iqiyi.com/mac/player/index.html'

  app '爱奇艺.app'

  zap trash: [
               '~/Library/Application Scripts/com.iqiyi.player',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.iqiyi.player.sfl*',
               '~/Library/Containers/com.iqiyi.player',
             ]
end
