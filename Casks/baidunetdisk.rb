cask 'baidunetdisk' do
  version '3.3.1'
  sha256 'a2e0e8f565e7b57cc933b592bc7fedaa9b10189993756f8ea8d2734e64ef0181'

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
