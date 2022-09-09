cask "polymc" do
  version "1.4.2"
  sha256 "c2b9faef97c6f01d49343428aea9a28412ba8290c428e8fe7e35a8799dc7766a"

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
