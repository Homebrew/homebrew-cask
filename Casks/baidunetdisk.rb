cask "baidunetdisk" do
  version "3.7.4"
  sha256 "5103d1abe8039108cfcc855a71d9aa9bc72a50110410525b9aad31b6bea7cbb8"

  url "https://wppkg.baidupcs.com/issue/netdisk/MACguanjia/BaiduNetdisk_mac_#{version}.dmg",
      verified: "baidupcs.com/issue/netdisk/MACguanjia/"
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
