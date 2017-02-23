cask 'baidunetdisk' do
  version '2.1.0'
  sha256 'd19738386adb0ab0d3eb196e4313978a025eaf70460be14789223a106f7b7458'

  # baidupcs.com/issue/netdisk/MACguanjia was verified as official when first introduced to the cask
  url "https://issuecdn.baidupcs.com/issue/netdisk/MACguanjia/BaiduNetdisk_mac_#{version}.dmg"
  name 'Baidu NetDisk'
  name '百度网盘'
  homepage 'https://pan.baidu.com/download'

  depends_on macos: '>= :yosemite'

  app 'BaiduNetdisk_mac.app'

  zap delete: [
                '~/Library/Application Support/com.baidu.BaiduNetdisk-mac',
                '~/Library/Caches/com.baidu.BaiduNetdisk-mac',
                '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.baidu.BaiduNetdisk-mac',
                '~/Library/Cookies/com.baidu.BaiduNetdisk-mac.binarycookies',
                '~/Library/Preferences/com.baidu.BaiduNetdisk-mac.plist',
                '~/Library/sapi/wappass.baidu.com',
                '~/Library/Saved Application State/com.baidu.BaiduNetdisk-mac.savedState',
              ],
      rmdir:
              [
                '~/Library/Caches/com.plausiblelabs.crashreporter.data',
                '~/Library/sapi',
              ]
end
