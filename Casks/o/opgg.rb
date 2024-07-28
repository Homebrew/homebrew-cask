cask "opgg" do
  version "1.4.4"
  sha256 "5d0909b6e366fdc5f43b3625afa5ffe99b8747e35b1dd3a3ab7424e3d0537675"

  url "https://desktop-patch.op.gg/update/general/OP.GG-#{version}.dmg"
  name "OP.GG Desktop"
  desc "Game records and champion analysis"
  homepage "https://op.gg/desktop/"

  livecheck do
    url "https://desktop-patch.op.gg/update/general/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "OP.GG.app"

  zap trash: [
    "~/Library/Application Support/opgg-electron-app",
    "~/Library/Caches/desktop.op.gg",
    "~/Library/Caches/desktop.op.gg.ShipIt",
    "~/Library/HTTPStorages/desktop.op.gg",
    "~/Library/Preferences/desktop.op.gg.plist",
    "~/Library/Saved Application State/desktop.op.gg.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
