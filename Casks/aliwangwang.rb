cask 'aliwangwang' do
  version :latest
  sha256 :no_check

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
