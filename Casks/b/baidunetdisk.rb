cask "baidunetdisk" do
  arch arm: "arm64", intel: "x64"

  version "8.1.8"
  sha256 arm:   "035b5150d39d04fe4d4ade94bac99216d936eceaacbc40fccd93c9a77275b4e6",
         intel: "8ff17e969364fd7531e05a6a9aacd0933833ff9aa7b09c0a70f35bb31606462c"

  url "https://pkg-ant.baidu.com/issue/netdisk/MACguanjia/#{version}/BaiduNetdisk_mac_#{version}_#{arch}.dmg"
  name "Baidu NetDisk"
  name "百度网盘"
  desc "Cloud storage service"
  homepage "https://pan.baidu.com/"

  livecheck do
    url "https://pan.baidu.com/disk/cmsdata?do=client"
    regex(/BaiduNetdisk(?:[._-]mac)?[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
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
