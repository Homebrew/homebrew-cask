cask "baidunetdisk" do
  version "3.9.0"
  sha256 "e23abb9ff8183029adada8384e11946da521a4e3cfba410052b4456d8294c670"

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
