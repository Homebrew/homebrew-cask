cask "opgg" do
  version "2.0.11"
  sha256 "eac47ef804fea4a1150beafbb2d7af1b12870fc9fd10500e6f8cb683249b5772"

  url "https://desktop-patch.op.gg/update/general/OP.GG-#{version}-universal.dmg"
  name "OP.GG Desktop"
  desc "Game records and champion analysis"
  homepage "https://op.gg/desktop/"

  livecheck do
    url "https://desktop-patch.op.gg/update/general/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "OP.GG.app"

  zap trash: [
    "~/Library/Application Support/opgg-electron-app",
    "~/Library/Caches/desktop.op.gg",
    "~/Library/Caches/desktop.op.gg.ShipIt",
    "~/Library/HTTPStorages/desktop.op.gg",
    "~/Library/Preferences/desktop.op.gg.plist",
    "~/Library/Saved Application State/desktop.op.gg.savedState",
  ]
end
