cask 'qiyimedia' do
  version :latest
  sha256 :no_check

  url 'https://mbdapp.iqiyi.com/j/ot/iQIYIMedia_005.dmg'
  name '爱奇艺视频'
  homepage 'https://www.iqiyi.com/'

  depends_on macos: '>= :mountain_lion'

  app '爱奇艺.app'

  zap delete: [
                '~/Library/Application Scripts/com.iqiyi.player',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.iqiyi.player.sfl*',
                '~/Library/Containers/com.iqiyi.player',
              ]
end
