cask "baidunetdisk" do
  arch arm: "arm64", intel: "x64"

  version "4.19.2"
  sha256 arm:   "75d72baa27f2f3729c5b1b06e0dc260f65e7275665e15562c99069e4b613cac0",
         intel: "c47d0d807c2763e23ffb52fca9df13456c5fdf99a20c08220662f8ab2bf709ce"

  url "https://issuepcdn.baidupcs.com/issue/netdisk/MACguanjia/#{version}/BaiduNetdisk_mac_#{version}_#{arch}.dmg",
      verified: "issuepcdn.baidupcs.com/issue/netdisk/MACguanjia/"
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
