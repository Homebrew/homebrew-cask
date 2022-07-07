cask "baidunetdisk" do
  version "4.10.1"
  sha256 "f6608a58a42890c5d74175a3594330d70644484efaffad59f989199610eaf01f"

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
