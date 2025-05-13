cask "openra@playtest" do
  version "20250220"
  sha256 "d855c90cb7e27e6d8c6fa6bb42211c0a572c3c57a541623c844d0b41de12eaff"

  url "https://github.com/OpenRA/OpenRA/releases/download/playtest-#{version}/OpenRA-playtest-#{version}.dmg",
      verified: "github.com/OpenRA/OpenRA/"
  name "OpenRA (playtest)"
  desc "Real-time strategy game engine for Westwood games"
  homepage "https://www.openra.net/"

  livecheck do
    url :url
    regex(/^playtest[._-]v?(\d+(?:[.-]\d+)*)$/i)
  end

  conflicts_with cask: "openra"

  app "OpenRA - Dune 2000.app"
  app "OpenRA - Red Alert.app"
  app "OpenRA - Tiberian Dawn.app"

  zap trash: [
    "~/Library/Application Support/OpenRA",
    "~/Library/Saved Application State/net.openra.mod.cnc.savedState",
    "~/Library/Saved Application State/net.openra.mod.d2k.savedState",
    "~/Library/Saved Application State/net.openra.mod.ra.savedState",
  ]
end
