cask "baidunetdisk" do
  version "3.5.0"
  sha256 "c7a6bdc0be688464dc3f95ec5fa87aebe109eeb2e646b01412242abfefb115e8"

  # baidupcs.com/issue/netdisk/MACguanjia/ was verified as official when first introduced to the cask
  url "https://wppkg.baidupcs.com/issue/netdisk/MACguanjia/BaiduNetdisk_mac_#{version}.dmg"
  appcast "https://pan.baidu.com/disk/cmsdata?do=client"
  name "Baidu NetDisk"
  name "百度网盘"
  desc "Cloud storage service"
  homepage "https://pan.baidu.com/download"

  depends_on macos: ">= :yosemite"

  app "BaiduNetdisk_mac.app"

  zap trash: [
    "~/Library/Application Support/com.baidu.BaiduNetdisk-mac",
    "~/Library/Caches/com.baidu.BaiduNetdisk-mac",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.baidu.BaiduNetdisk-mac",
    "~/Library/Cookies/com.baidu.BaiduNetdisk-mac.binarycookies",
    "~/Library/Preferences/com.baidu.BaiduNetdisk-mac.plist",
    "~/Library/sapi/wappass.baidu.com",
    "~/Library/Saved Application State/com.baidu.BaiduNetdisk-mac.savedState",
  ],
      rmdir:
             [
               "~/Library/Caches/com.plausiblelabs.crashreporter.data",
               "~/Library/sapi",
             ]
end
