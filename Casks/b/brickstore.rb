cask "brickstore" do
  version "2024.12.1"
  sha256 "fb9f45daf5b529bee7f8ae9f53acb9ca8c44903d03b9cb2379824d97d58e48cd"

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
