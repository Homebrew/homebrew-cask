cask "openra" do
  version "20250303"
  sha256 "3e2239d9776e660d49ce509cf318a305eed086feccaa799c0f7c3b0c0b1d0d1b"

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
