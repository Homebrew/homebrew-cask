cask "taobao" do
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "2200655677636c6d5ffd0cfd156ceda3fa49382b8fdbbba870236f5ddb7c1c81",
         intel: "51640fd574a9ff8e097bd14e8a085a095f9e72c6fb5619884ea61740b64625c7"

  on_arm do
    version "2.1.0"
  end
  on_intel do
    version "2.5.1"
  end

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
  depends_on macos: :big_sur

  app "淘宝桌面版.app"

  zap trash: [
    "~/Library/Application Support/taobao",
    "~/Library/Caches/com.taobao.desktop",
    "~/Library/HTTPStorages/com.taobao.desktop",
    "~/Library/Logs/taobao",
    "~/Library/Preferences/com.taobao.desktop.plist",
  ]
end
