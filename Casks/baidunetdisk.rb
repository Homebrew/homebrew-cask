cask 'baidunetdisk' do
  version '2.0.0'
  sha256 '06a3477139a2c96fc8ceaa3a59c1a65dc0b57ec9a069f2f6356067778ae2014f'

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
