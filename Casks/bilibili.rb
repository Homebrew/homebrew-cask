cask "bilibili" do
  version "1.1.2"
  sha256 :no_check

  url "https://dl.hdslb.com/mobile/fixed/pc_electron_mac/bili_mac.dmg",
      verified: "dl.hdslb.com/"
  name "Bilibili"
  name "哔哩哔哩"
  desc "Official bilibili video streaming and sharing platform"
  homepage "https://app.bilibili.com/"

  livecheck do
    skip "No version information available"
  end

  auto_updates true

  app "哔哩哔哩.app"

  zap trash: [
    "~/Library/Application Support/bilibili/",
    "~/Library/Saved Application State/com.bilibili.bilibiliPC.savedState/",
    "~/Library/Preferences/com.bilibili.bilibiliPC.plist",
  ]
end
