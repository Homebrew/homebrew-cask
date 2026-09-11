cask "equibop" do
  version "3.3.0"
  sha256 "b8fcc0917290c4c50199b57d6fb46653a54670b3ba47025a52a2e21014579cc6"

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
