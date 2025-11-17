cask "taobao" do
  arch arm: "arm64", intel: "x64"

  version "2.1.1"
  sha256 arm:   "a92c56fe614ad7fe0bacfceda8dde6d2dad11bcb0c4e13cd30728fee3fe16683",
         intel: "cf8839156c8f23e37656e775a2f6630f170e43440c79cea575ab2fb1f15a1cec"

  url "https://tblifecdn.taobao.com/taobaopc/shop/taobao-setup-darwin-#{arch}-#{version}.dmg"
  name "taobao"
  name "淘宝桌面版"
  desc "Shopping client"
  homepage "https://pc.taobao.com/"

  livecheck do
    url "https://pc.taobao.com/"
    regex(/"lastedVersion":"(\d+\.\d+\.\d+)"/)
    strategy :page_match
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "淘宝桌面版.app"

  zap trash: [
    "~/Library/Application Support/taobao",
    "~/Library/Caches/com.taobao.desktop",
    "~/Library/HTTPStorages/com.taobao.desktop",
    "~/Library/Logs/taobao",
    "~/Library/Preferences/com.taobao.desktop.plist",
  ]
end
