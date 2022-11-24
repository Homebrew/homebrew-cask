cask "slab" do
  arch arm: "arm64", intel: "x64"

  version "1.3.0"
  sha256 arm:   "db5ace5e12ecf840628fa52f5632362ba8fbf853c03038c9a2ede9e5aea102d2",
         intel: "a6450d2de819bb06771f14feb416d067977c17f887e4886d05df718f94f09257"

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
