cask "bilibili" do
  version "1.1.2"
  sha256 :no_check

  url "https://dl.hdslb.com/mobile/fixed/pc_electron_mac/bili_mac.dmg",
      verified: "https://dl.hdslb.com/mobile/fixed/pc_electron_mac/"
  name "Bilibili"
  name "哔哩哔哩"
  desc "Official bilibili client"
  homepage "https://www.bilibili.com/"

  livecheck do
    url "http://api.bilibili.com/x/elec-frontend/update/latest-mac.yml"
    regex(/version: ([\d.]+)/i)
  end

  auto_updates true

  app "哔哩哔哩.app"

  zap trash: [
    "~/Library/Application Support/bilibili",
    "~/Library/Logs/bilibili",
    "~/Library/Saved Application State/com.bilibili.bilibiliPC.savedState",
    "~/Library/Preferences/com.bilibili.bilibiliPC.plist",
  ]
end
