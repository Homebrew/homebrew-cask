cask 'aliwangwang' do
  version '7.06.12-8579'
  sha256 '8a0a4bb24c7fd048362b1f33778d2f1d055725a8041a1a186e92dc532ac61ffa'

  # dbison.alicdn.com was verified as official when first introduced to the cask
  url "https://dbison.alicdn.com/updates/MacWW_7_5_Internal-#{version}.dmg"
  appcast 'http://update.labs.etao.com/MacWW_7_5_Internal/updates.xml',
          checkpoint: '9c3c392733db24d35b521401a0a4cd15cae3e34b49e79e5ad4c97ff5374f9faf'
  name 'Ali Wangwang'
  homepage 'https://wangwang.taobao.com/'

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
