cask 'baiducloud' do
  version '2.2.2'
  sha256 '89e3bdc7da7860e55f3fa6edf756a74bd7d7f55607db0358922f7e96c4cc8590'

  # issuecdn.baidupcs.com was verified as official when first introduced to the cask
  url "https://issuecdn.baidupcs.com/issue/netdisk/MACguanjia/BaiduNetdisk_mac_#{version}.dmg"
  appcast 'https://pan.baidu.com/disk/cmsdata?do=client'
  name 'Baidu Cloud'
  name 'Baidu Yun Tong Bu Pan'
  name '百度云同步盘'
  homepage 'https://pan.baidu.com/'

  app 'BaiduNetdisk_mac.app'

  uninstall quit: 'com.baidu.netdiskmac'

  zap trash: [
               '~/Library/Application Support/百度云同步盘',
               '~/Library/Preferences/com.baidu.netdiskmac.plist',
               '~/Library/Caches/com.baidu.netdiskmac',
             ]
end
