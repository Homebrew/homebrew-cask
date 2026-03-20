cask "baidunetdisk" do
  arch arm: "arm64", intel: "x64"

  version "8.3.1"
  sha256 arm:   "eec01facd50be00dd5ffe7cc8d85e67e7a0a6199f550ef0ddf6db1d783c96963",
         intel: "9d55a37783195c9710aa3a5de7cbef0cc4ce0d40bfa4b8d906feb2d151c1e88a"

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
