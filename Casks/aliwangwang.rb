cask 'aliwangwang' do
  version '8.01.02(11845)'
  sha256 'dcdb6438de3bf780a684e2b90390117c2adcf94ee44df4a9ca4ca046b233737f'

  url 'http://p.tb.cn/rmsportal_7535_Aliwangwang-20180703-1509-8.01.02.dmg'
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
