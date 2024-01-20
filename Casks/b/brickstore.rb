cask "brickstore" do
  version "2024.1.3"
  sha256 "74739687edf75751c0887fcf6c013765a69e277f4b703441c9ea1319004adfdc"

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
