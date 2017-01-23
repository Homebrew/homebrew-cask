cask 'aliwangwang' do
  version '7.08.00-8659'
  sha256 'b35e67920b72941e5ddee9a9297aa56d9a6c5c4eba23cc3b2bd9b2978f00e28d'

  # dbison.alicdn.com was verified as official when first introduced to the cask
  url "https://dbison.alicdn.com/updates/MacWW_7_6_10-#{version}.dmg"
  appcast 'https://update.labs.etao.com/MacWW_7_6_10/updates.xml',
          checkpoint: 'a2248375e18457d07be0177b1916a8fca7915195f264f8e69626ee5bedfe3691'
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
