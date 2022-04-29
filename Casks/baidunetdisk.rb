cask "baidunetdisk" do
  version "4.8.0"
  sha256 "bd81867aa6d65e27996c518a14d94b436553309d3ce299516bb8b7d993bd76c0"

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
