cask 'baidunetdisk' do
  version '2.2.2'
  sha256 '89e3bdc7da7860e55f3fa6edf756a74bd7d7f55607db0358922f7e96c4cc8590'

  # baidupcs.com/issue/netdisk/MACguanjia was verified as official when first introduced to the cask
  url "https://issuecdn.baidupcs.com/issue/netdisk/MACguanjia/BaiduNetdisk_mac_#{version}.dmg"
  name 'Baidu NetDisk'
  name '百度网盘'
  homepage 'https://pan.baidu.com/download'

  depends_on macos: '>= :yosemite'

  app 'BaiduNetdisk_mac.app'

  zap trash: [
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
