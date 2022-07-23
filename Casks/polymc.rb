cask "polymc" do
  version "1.4.0"
  sha256 "6977e7c5a49cdf30b7fd5fd9b1de4297680d944af27489d67a045287f4f20125"

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
