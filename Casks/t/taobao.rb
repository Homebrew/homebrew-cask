cask "taobao" do
  arch arm: "arm64", intel: "x64"

  version "2.2.0"
  sha256 arm:   "14c17c6f1b631de8b7afc87b9463c5e4e63fe822f87dbaf00b575812c2cbbdaf",
         intel: "4986576b4a9536de6f0eecf6f40aa0bfef77014cdd391fb64c7cc68f9c569c29"

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
