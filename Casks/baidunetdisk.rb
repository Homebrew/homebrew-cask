cask "baidunetdisk" do
  version "4.9.0"
  sha256 "5e8d4db9d15c7b306a006c4608d28906bb09629ec16db043d7ce722296a5a619"

  url "https://issuepcdn.baidupcs.com/issue/netdisk/MACguanjia/BaiduNetdisk_mac_#{version}.dmg",
      verified: "issuepcdn.baidupcs.com/issue/netdisk/MACguanjia/"
  name "Baidu NetDisk"
  name "百度网盘"
  desc "Cloud storage service"
  homepage "https://pan.baidu.com/download"

  livecheck do
    url "https://pan.baidu.com/disk/cmsdata?do=client"
    regex(/BaiduNetdisk[._-]mac[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  auto_updates true
  depends_on macos: ">= :yosemite"

  app "BaiduNetdisk_mac.app"

  zap trash: [
    "~/Library/Application Scripts/com.baidu.BaiduNetdisk-mac.FinderSync",
    "~/Library/Application Support/baidunetdisk",
    "~/Library/Application Support/com.baidu.BaiduNetdisk-mac",
    "~/Library/Caches/com.baidu.BaiduNetdisk-mac",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.baidu.BaiduNetdisk-mac",
    "~/Library/Containers/com.baidu.BaiduNetdisk-mac.FinderSync",
    "~/Library/Cookies/com.baidu.BaiduNetdisk-mac.binarycookies",
    "~/Library/HTTPStorages/com.baidu.BaiduNetdisk-mac",
    "~/Library/Preferences/com.baidu.BaiduNetdisk-mac.plist",
    "~/Library/sapi/wappass.baidu.com",
    "~/Library/Saved Application State/com.baidu.BaiduNetdisk-mac.savedState",
  ],
      rmdir: [
        "~/Library/Caches/com.plausiblelabs.crashreporter.data",
        "~/Library/sapi",
      ]
end
