cask "baiducloud" do
  version "2.4.6"
  sha256 "9ae594d4d6a4581d971ed9fcde7cda62022b04247476a8982802324fa16bee2e"

  # issuecdn.baidupcs.com/ was verified as official when first introduced to the cask
  url "https://issuecdn.baidupcs.com/issue/netdisk/mac_tongbupan/tongbupan_#{version}.dmg"
  name "Baidu Cloud"
  name "Baidu Yun Tong Bu Pan"
  name "百度云同步盘"
  homepage "https://pan.baidu.com/"

  app "百度云同步盘.app"

  uninstall quit: "com.baidu.netdiskmac"

  zap trash: [
    "~/Library/Application Support/百度云同步盘",
    "~/Library/Preferences/com.baidu.netdiskmac.plist",
    "~/Library/Caches/com.baidu.netdiskmac",
  ]
end
