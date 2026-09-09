cask "baidunetdisk" do
  arch arm: "_arm64", intel: "_x64"

  version "8.8.3"
  sha256 arm:   "0be37384f45ed83e3ec85654d9177cf4fa9122a2697c9f0710a413844281f135",
         intel: "3cfbfeda7b9f5a5433afc6bc93c2d844aa8a7788eecceb8bdf66e8537f09e086"

  url "https://pkg-ant.baidu.com/issue/netdisk/MACguanjia/#{version}/BaiduNetdisk_mac_#{version}#{arch}.dmg"
  name "Baidu NetDisk"
  name "百度网盘"
  desc "Cloud storage service"
  homepage "https://pan.baidu.com/"

  livecheck do
    url "https://pan.baidu.com/disk/cmsdata?do=client"
    regex(/BaiduNetdisk(?:[._-]mac)?[._-]v?(\d+(?:\.\d+)+)#{arch}\.dmg/i)
  end

  auto_updates true
  depends_on :macos

  app "BaiduNetdisk_mac.app"

  uninstall launchctl: "netdisk_service"

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
