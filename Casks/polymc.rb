cask "polymc" do
  version "1.3.1"
  sha256 "847345bb33c4b454c383a4f3e4f051b08433fc2839ef1446cac3a109fb3bf8aa"

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
