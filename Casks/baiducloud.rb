cask "baiducloud" do
  version "3.9.0"
  sha256 "e23abb9ff8183029adada8384e11946da521a4e3cfba410052b4456d8294c670"

  url "https://issuecdn.baidupcs.com/issue/netdisk/MACguanjia/BaiduNetdisk_mac_#{version}.dmg",
      verified: "issuecdn.baidupcs.com/"
  name "Baidu Cloud"
  name "Baidu Yun Tong Bu Pan"
  name "百度云同步盘"
  desc "Comprehensive Cloud service provided by Baidu"
  homepage "https://pan.baidu.com/"

  app "BaiduNetdisk_mac.app"

  uninstall quit: "com.baidu.netdiskmac"

  zap trash: [
    "~/Library/Application Support/百度云同步盘",
    "~/Library/Preferences/com.baidu.netdiskmac.plist",
    "~/Library/Caches/com.baidu.netdiskmac",
  ]
end
