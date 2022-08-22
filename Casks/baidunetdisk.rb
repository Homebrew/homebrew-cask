cask "baidunetdisk" do
  arch arm: "arm64", intel: "x64"

  version "4.12.3"

  on_intel do
    sha256 "2be8f4a50a498012dbcc3bf5f819c20172b551c19578320f188afff41040c27b"
    url "https://issuepcdn.baidupcs.com/issue/netdisk/MACguanjia/BaiduNetdisk_mac_#{version}_#{arch}.dmg",
        verified: "issuepcdn.baidupcs.com/issue/netdisk/MACguanjia/"
  end
  on_arm do
    sha256 "66906b2d6b495baaca3e2f09a9e9ebb1f54c96658a6f55dc977cea5ae59ea23a"
    url "https://issuepcdn.baidupcs.com/issue/netdisk/MACguanjia/BaiduNetdisk_mac_#{version}_#{arch}.dmg",
        verified: "issuepcdn.baidupcs.com/issue/netdisk/MACguanjia/"
  end

  name "Baidu NetDisk"
  name "百度网盘"
  desc "Cloud storage service"
  homepage "https://pan.baidu.com/download"

  livecheck do
    url "https://pan.baidu.com/disk/cmsdata?do=client"
    regex(/BaiduNetdisk[._-]mac[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
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
