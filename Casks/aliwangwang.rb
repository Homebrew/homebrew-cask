cask 'aliwangwang' do
  version '20170818-1459-8.00.28'
  sha256 '343fbba48ce26b2f8f82ad8a8e65a553dead4bd128773cb7a5775ad4e33d0fe1'

  # dbison.alicdn.com was verified as official when first introduced to the cask
  url "https://alimarket.taobao.com/markets/qnww/aliww-download?wh_from=macos"
  
  name 'Ali Wangwang'
  homepage 'https://alimarket.taobao.com/markets/qnww/portal-group/ww/index'

  app 'AliWangwang.app'

  uninstall quit: 'com.taobao.aliwangwang'

  zap delete: [
                '~/Library/Caches/com.taobao.aliwangwang',
                '~/Library/Containers/com.taobao.aliwangwang',
                '~/Library/Internet Plug-Ins/WangwangPlugin.plugin',
                '~/Library/Preferences/com.taobao.aliwangwang.plist',
                '~/Library/Saved Application State/com.taobao.aliwangwang.savedState',
              ]
end
