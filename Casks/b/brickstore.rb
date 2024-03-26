cask "brickstore" do
  version "2024.3.1"
  sha256 "84e8577256a855011384a78f39b405c515a4a56df782af1a009ec1025f0d9314"

  url "https://github.com/rgriebl/brickstore/releases/download/v#{version}/macOS-BrickStore-#{version}.dmg",
      verified: "github.com/rgriebl/brickstore/"
  name "BrickStore"
  desc "BrickLink offline management tool"
  homepage "https://www.brickstore.dev/"

  app "BrickStore.app"

  zap trash: [
    "~/Library/Preferences/de.brickforge.brickstore.plist",
    "~/Library/Preferences/org.brickstore.BrickStore.plist",
    "~/Library/Saved Application State/de.brickforge.brickstore.savedState",
  ]
end
