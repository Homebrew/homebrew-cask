cask "slab" do
  arch arm: "arm64", intel: "x64"

  version "1.5.0"
  sha256 arm:   "aa11f368ea25463ce153ce8a22077b25852edcaf592473a71817e52a45ec7bf6",
         intel: "10ab8b790b915bd28bd4b04c32bac7a973f82b0b16c52c3682e544a93cba8f63"

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
