cask 'aliwangwang' do
  version '7.03.01-7790'
  sha256 '48f400006987ecb3b9f46eaa3add78a4e22304ff15c684ce637a1c087f08f0bd'

  # dbison.alicdn.com was verified as official when first introduced to the cask
  url "https://dbison.alicdn.com/updates/macww-nosandbox-#{version}.dmg"
  name 'Ali Wangwang'
  homepage 'https://wangwang.taobao.com'

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
