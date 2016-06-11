cask 'aliwangwang' do
  version '7.00.02-7243'
  sha256 '78f3a632cfb8bc6835131ed8a434b09cef90a29a8fd5051f7c6d87a3306d5b85'

  # dbison.alicdn.com was verified as official when first introduced to the cask
  url "https://dbison.alicdn.com/updates/macww-nosandbox-#{version}.dmg"
  appcast 'https://update.labs.etao.com/macww/updates.xml',
          checkpoint: '7178027350d87155dbcf2f2ebcc454262ae5d807fdf75f3688003ea5fccdb1b1'
  name 'Ali Wangwang'
  homepage 'https://wangwang.taobao.com'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

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
