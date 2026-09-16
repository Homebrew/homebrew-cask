cask "equibop" do
  version "3.3.1"
  sha256 "32023d2a0b92be7d347d1ddd4e0fb8fa021b8923c1a79382f1e01cacd91b8fb6"

  url "https://github.com/Equicord/Equibop/releases/download/v#{version}/Equibop-#{version}-universal.dmg"
  name "Equibop"
  desc "Custom Discord App"
  homepage "https://github.com/Equicord/Equibop"

  livecheck do
    url "https://github.com/Equicord/Equibop/releases/latest/download/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "equibop.app"

  zap trash: [
    "~/Library/Application Support/equibop",
    "~/Library/Caches/org.equicord.equibop",
    "~/Library/Caches/org.equicord.equibop.ShipIt",
    "~/Library/HTTPStorages/org.equicord.equibop",
    "~/Library/Preferences/org.equicord.equibop.plist",
    "~/Library/Saved Application State/org.equicord.equibop.savedState",
  ]
end
