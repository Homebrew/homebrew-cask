cask "baidunetdisk" do
  arch arm: "arm64", intel: "x64"

  version "4.46.1"
  sha256 arm:   "0e4aa1a13c80cc7c7af330836a2fb57705b04c9014e932592374357bfc23af30",
         intel: "cefac4024945bc26cac146f6d88525fea3a78b5fb1eab0fe823e3b1d76156f08"

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
  depends_on macos: ">= :high_sierra"

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
