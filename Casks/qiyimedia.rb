cask 'qiyimedia' do
  version '5.9.8'
  sha256 '4ab72bb91ed0246bed7a227e4dce68fee760590f4549633ad47d18d46bd69df6'

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
