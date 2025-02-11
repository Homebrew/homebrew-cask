cask "slab" do
  arch arm: "arm64", intel: "x64"

  version "1.6.0"
  sha256 arm:   "74381580bae8f750c35d977a3945d1255f8971f0ff05131bcfd65150c3135e50",
         intel: "6bb4f3db1c0ea1c760e4d42ef262de94ff09aef2037c7e793697bd8f76cc0c8c"

  url "https://github.com/slab/desktop-releases/releases/download/v#{version}/Slab-#{version}-darwin-#{arch}.dmg",
      verified: "github.com/slab/desktop-releases/"
  name "Slab"
  desc "Knowledge management for organisations"
  homepage "https://slab.com/"

  auto_updates true
  depends_on macos: ">= :catalina"

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
