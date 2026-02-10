cask "slab" do
  arch arm: "arm64", intel: "x64"

  version "1.7.2"
  sha256 arm:   "f26cc76229610e27b96a4ad286c590598105a2986e614faa83d1b3e8580f5056",
         intel: "f84f8bcc022f1964fe1e149cfa66399d32ef8ac4307f959d15a952b8bc8daa3d"

  url "https://github.com/slab/desktop-releases/releases/download/v#{version}/Slab-#{version}-darwin-#{arch}.dmg",
      verified: "github.com/slab/desktop-releases/"
  name "Slab"
  desc "Knowledge management for organisations"
  homepage "https://slab.com/"

  auto_updates true
  depends_on macos: ">= :monterey"

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
