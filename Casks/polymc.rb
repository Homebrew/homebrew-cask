cask "polymc" do
  version "1.2.1"
  sha256 "572e27b3efff69296db49f9191c54a603fb2498ad997219cbff8ddbea8e282f1"

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
