cask "slab" do
  arch arm: "arm64", intel: "x64"

  version "1.4.1"
  sha256 arm:   "f466524ec22f7a74ab9cb5e79f3be261972d1cda3bdb301f650ac0ead230068a",
         intel: "a40646a72adf8d2ec8c6134d395ea69467e4b362eb63603d78d1c0631d887071"

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
