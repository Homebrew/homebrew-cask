cask 'qiyimedia' do
  version '005'
  sha256 '5c4be4a6c91358b40a96747194b90e2360c721648a009354f8fc29a33590b531'

  url "https://mbdapp.iqiyi.com/j/ot/iQIYIMedia_#{version}.dmg"
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
