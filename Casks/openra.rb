cask "openra" do
  version "20210321"
  sha256 "20346073731e3dc0ccfc79ce05abe2e1e3a9d815fb945c0683169d455c6c1004"

  url "https://github.com/OpenRA/OpenRA/releases/download/release-#{version}/OpenRA-release-#{version}.dmg",
      verified: "github.com/OpenRA/OpenRA/"
  name "OpenRA"
  desc "Real-time strategy game engine for Westwood games"
  homepage "https://www.openra.net/"

  livecheck do
    url :url
    regex(/^release[._-]v?(\d+(?:[.-]\d+)*)$/i)
  end

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
