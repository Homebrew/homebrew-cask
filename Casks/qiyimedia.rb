cask 'qiyimedia' do
  version '5.9.11'
  sha256 'ae2cc7337ee6132c84c53cca871f743e337ea94fa3ca2a56a7d7ae065468621e'

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
