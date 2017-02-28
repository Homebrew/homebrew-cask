cask 'qiyimedia' do
  version '4.12.17'
  sha256 '39a9582a353472147865be23b6f4b4190f1aafa2941ebd8978b34bcafcc2e829'

  url 'https://mbdapp.iqiyi.com/j/ot/iQIYIMedia_003.dmg'
  name '爱奇艺视频'
  homepage 'https://www.iqiyi.com/'

  depends_on macos: '>= :mountain_lion'

  app '爱奇艺.app'

  zap delete: [
                '~/Library/Application Scripts/com.iqiyi.player',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.iqiyi.player.sfl',
                '~/Library/Containers/com.iqiyi.player',
              ]
end
