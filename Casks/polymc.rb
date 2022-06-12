cask "polymc" do
  version "1.3.2"
  sha256 "acb792c1dfd06e641dc1b1dc10367e7c1da59bf376c1090740db71e146f1de62"

  url "https://github.com/PolyMC/PolyMC/releases/download/#{version}/PolyMC-macOS-#{version}.tar.gz",
      verified: "github.com/PolyMC/PolyMC/"
  name "PolyMC"
  desc "Minecraft launcher"
  homepage "https://polymc.org/"

  depends_on macos: ">= :high_sierra"

  app "PolyMC.app"

  zap trash: [
    "~/Library/Application Support/PolyMC/metacache",
    "~/Library/Application Support/PolyMC/PolyMC-*.log",
    "~/Library/Application Support/PolyMC/polymc.cfg",
    "~/Library/Saved Application State/org.polymc.PolyMC.savedState",
  ]
end
