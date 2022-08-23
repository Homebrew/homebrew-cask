cask "bilibili-official" do
  version "1.5.0.1183"
  sha256 :no_check

  url "https://dl.hdslb.com/mobile/fixed/pc_electron_mac/bili_mac.dmg",
      verified: "dl.hdslb.com/"
  name "Bilibili"
  name "哔哩哔哩官方客户端"
  desc "Official bilibili video streaming and sharing platform"
  homepage "https://app.bilibili.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  auto_updates true

  app "哔哩哔哩.app"

  zap trash: [
    "~/Library/Application Support/bilibili",
    "~/Library/Logs/bilibili",
    "~/Library/Preferences/com.bilibili.bilibiliPC.plist",
    "~/Library/Saved Application State/com.bilibili.bilibiliPC.savedState",
  ]
end
