cask "bilibili" do
  version "1.13.5"
  sha256 "c3f1f43bfc8836cb27d8acbff24834129366a4e30920c3113cccb5f9e70509ac"

  url "https://dl.hdslb.com/mobile/fixed/pc_electron_mac/bili_mac.dmg?v=#{version}",
      verified: "dl.hdslb.com/"
  name "Bilibili"
  name "哔哩哔哩官方客户端"
  desc "Official bilibili video streaming and sharing platform"
  homepage "https://app.bilibili.com/"

  livecheck do
    url "http://api.bilibili.com/x/elec-frontend/update/latest.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "哔哩哔哩.app"

  zap trash: [
    "~/Library/Application Support/bilibili",
    "~/Library/Logs/bilibili",
    "~/Library/Preferences/com.bilibili.bilibiliPC.plist",
    "~/Library/Saved Application State/com.bilibili.bilibiliPC.savedState",
  ]
end
