cask "baidunetdisk" do
  arch arm: "_arm64", intel: "_x64"

  version "8.9.2"
  sha256 arm:   "fa60e4a328b5f08696c66c93cb9289bd6c79719dbe32a049cfdc46693e1a4d15",
         intel: "68129f32fb82254fd9eb33118f3d842e9fa08cb3c906e4d347c306f55e34e148"

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
