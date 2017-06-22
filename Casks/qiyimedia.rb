cask 'qiyimedia' do
  version '4.15.10'
  sha256 'fad57bd51aca4ccd797ea26e165e70a5824a4e62189c0369271ee6f516e94039'

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
