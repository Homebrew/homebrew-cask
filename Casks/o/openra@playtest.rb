cask "openra@playtest" do
  version "20261011"
  sha256 "e95ee61d3c68d4ee4d51e40e8ddd6d7f09ffab7c02ad7211ed0d429a5e9fba92"

  url "https://github.com/OpenRA/OpenRA/releases/download/playtest-#{version}/OpenRA-playtest-#{version}.dmg"
  name "OpenRA (playtest)"
  desc "Real-time strategy game engine for Westwood games"
  homepage "https://www.openra.net/"

  livecheck do
    url :url
    regex(/^playtest[._-]v?(\d+(?:[.-]\d+)*)$/i)
  end

  conflicts_with cask: "openra"
  depends_on :macos

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
