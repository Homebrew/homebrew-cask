cask "openra" do
  version "20250330"
  sha256 "76f0b5e41c2bd2af331b51b73ed1e43bed833e457926f095bdf59b772d65de27"

  url "https://github.com/OpenRA/OpenRA/releases/download/release-#{version}/OpenRA-release-#{version}.dmg",
      verified: "github.com/OpenRA/OpenRA/"
  name "OpenRA"
  desc "Real-time strategy game engine for Westwood games"
  homepage "https://www.openra.net/"

  livecheck do
    url :url
    regex(/^release[._-]v?(\d+(?:[.-]\d+)*)$/i)
  end

  conflicts_with cask: "openra-playtest"

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
