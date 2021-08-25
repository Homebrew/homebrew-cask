cask "baidunetdisk" do
  version "3.9.3"
  sha256 "f0edacc0ae5d845e4b7f2d783267647d2c2b5562b1d02b18f65593ca05d7efe8"

  url "https://wppkg.baidupcs.com/issue/netdisk/MACguanjia/BaiduNetdisk_mac_#{version}.dmg",
      verified: "baidupcs.com/issue/netdisk/MACguanjia/"
  name "Baidu NetDisk"
  name "百度网盘"
  desc "Cloud storage service"
  homepage "https://pan.baidu.com/download"

  livecheck do
    url "https://pan.baidu.com/disk/cmsdata?do=client"
    regex(/BaiduNetdisk[._-]mac[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

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
