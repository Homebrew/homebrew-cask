cask "taobao" do
  arch arm: "arm64", intel: "x64"

  version "2.1.0"
  sha256 arm:   "2200655677636c6d5ffd0cfd156ceda3fa49382b8fdbbba870236f5ddb7c1c81",
         intel: "9422e959e40004fb0c89ea5093e0f27f0a934d53e7fff4e808587dd3ed3b1f03"

  url "https://tblifecdn.taobao.com/taobaopc/shop/taobao-setup-darwin-#{arch}-#{version}.dmg"
  name "taobao"
  name "淘宝桌面版"
  desc "Online Shopping Client"
  homepage "https://pc.taobao.com/"

  livecheck do
    url "https://tblifecdn.taobao.com/taobaopc/updater/darwin/#{arch}/latest-mac.yml"
    strategy :electron_builder
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
