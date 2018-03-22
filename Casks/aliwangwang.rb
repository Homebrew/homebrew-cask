cask 'aliwangwang' do
  version '8.00.44(11443)'
  sha256 'f0e01f56cf7ae1343f50c815392a18a180e7dea7ed064c4e4ee43f66db279b3d'

  url 'https://alimarket.taobao.com/markets/qnww/aliww-download?wh_from=macos'
  name 'Ali Wangwang'
  homepage 'https://alimarket.taobao.com/markets/qnww/portal-group/ww/index'

  app 'AliWangwang.app'

  uninstall quit: 'com.taobao.aliwangwang'

  zap trash: [
               '~/Library/Caches/com.taobao.aliwangwang',
               '~/Library/Containers/com.taobao.aliwangwang',
               '~/Library/Internet Plug-Ins/WangwangPlugin.plugin',
               '~/Library/Preferences/com.taobao.aliwangwang.plist',
               '~/Library/Saved Application State/com.taobao.aliwangwang.savedState',
             ]
end
