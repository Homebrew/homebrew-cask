cask 'baidunetdisk' do
  version '3.2.0.9'
  sha256 '3b08163e41e9a497a56337c484da5b60541534f85a9d242b236914781589d055'

  # baidupcs.com/issue/netdisk/MACguanjia/ was verified as official when first introduced to the cask
  url "https://wppkg.baidupcs.com/issue/netdisk/MACguanjia/BaiduNetdisk_mac_#{version}.dmg"
  appcast 'https://pan.baidu.com/disk/cmsdata?do=client'
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
