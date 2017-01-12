cask 'baiducloud' do
  version '2.4.5'
  sha256 '7694edba46c8e53ffd2d2485dad4d68b06e27cc038d18cdd40699d1c0e559ba2'

  # issuecdn.baidupcs.com was verified as official when first introduced to the cask
  url "http://issuecdn.baidupcs.com/issue/netdisk/macapk/BaiduNetdisk_mac_#{version}.dmg"
  name 'Baidu Cloud'
  name 'Baidu Yun Tong Bu Pan'
  name '百度云同步盘'
  homepage 'https://pan.baidu.com/'

  app '百度云同步盘.app'

  uninstall quit: 'com.baidu.netdiskmac'

  zap delete: [
                '~/Library/Application Support/百度云同步盘',
                '~/Library/Preferences/com.baidu.netdiskmac.plist',
                '~/Library/Caches/com.baidu.netdiskmac',
              ]
end
