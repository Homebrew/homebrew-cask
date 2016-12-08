cask 'baidunetdisk' do
  version '2.0.1'
  sha256 '785cb6aa5525e1146d829baa5a861bda63caacf2b9239d6e317f36ed8b353d55'

  # baidupcs.com/issue/netdisk/MACguanjia was verified as official when first introduced to the cask
  url "https://issuecdn.baidupcs.com/issue/netdisk/MACguanjia/BaiduNetdisk_mac_#{version}.dmg"
  name 'Baidu NetDisk'
  name '百度网盘'
  homepage 'https://pan.baidu.com/download'

  app 'BaiduNetdisk_mac.app'

  zap delete: [
                '~/Library/Application Support/com.baidu.BaiduNetdisk-mac',
                '~/Library/Caches/com.baidu.BaiduNetdisk-mac',
                '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.baidu.BaiduNetdisk-mac',
                '~/Library/Cookies/com.baidu.BaiduNetdisk-mac.binarycookies',
                '~/Library/Preferences/com.baidu.BaiduNetdisk-mac.plist',
                '~/Library/sapi/wappass.baidu.com',
                '~/Library/Saved Application State/com.baidu.BaiduNetdisk-mac.savedState',
              ]
end
