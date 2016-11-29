cask 'aliwangwang' do
  version '7.06.00-8288'
  sha256 'b4151f0811a0d32d4734994995d094d686b3d22347b268690b907349771d5cf5'

  # dbison.alicdn.com was verified as official when first introduced to the cask
  url "https://dbison.alicdn.com/updates/macww-nosandbox-#{version}.dmg"
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
