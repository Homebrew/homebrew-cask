cask "slab" do
  arch arm: "arm64", intel: "x64"

  version "1.4.0"
  sha256 arm:   "d4824c5c13e1887c329e752a1a5c66503cc20b1673fbb1b3ec65cc2e0488104a",
         intel: "c664d7ca4e43af8320d196c1021ec9485efaceccf690ec3995faf8dcf5dda598"

  url "https://github.com/slab/desktop-releases/releases/download/v#{version}/Slab-#{version}-darwin-#{arch}.dmg",
      verified: "github.com/slab/desktop-releases/"
  name "Slab"
  desc "Knowledge management for organizations"
  homepage "https://slab.com/"

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "Slab.app"

  zap trash: [
    "~/Library/Application Support/Slab",
    "~/Library/Caches/com.slab.slab",
    "~/Library/Caches/com.slab.slab.ShipIt",
    "~/Library/HTTPStorages/com.slab.slab",
    "~/Library/Logs/Slab",
    "~/Library/Preferences/com.slab.slab.plist",
    "~/Library/Saved Application State/com.slab.slab.savedState",
  ]
end
