cask "openra" do
  version "20231010"
  sha256 "da81dfcfab8287f21127827e029a0553bde08207a15656393c9e3c1d6341d3c4"

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
