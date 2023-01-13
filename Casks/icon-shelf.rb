cask "icon-shelf" do
  arch arm: "-arm64"

  version "0.1.17"
  sha256 arm:   "7a5bc6f4af0658d9ae6a6449946b95aea9a5a19a5fd779973d8c3a6590347147",
         intel: "a8814b41812300d157306c91fdc84b763d3cb5c18dc86bce934da2952c62f013"

  url "https://github.com/Icon-Shelf/icon-shelf/releases/download/v#{version}/Icon-Shelf-#{version}#{arch}.dmg",
      verified: "github.com/Icon-Shelf/icon-shelf/"
  name "Icon Shelf"
  desc "Icon manager for web developers"
  homepage "https://icon-shelf.github.io/"

  auto_updates true

  app "Icon Shelf.app"

  zap trash: [
    "~/Library/Logs/Icon Shelf",
    "~/Library/Preferences/com.IconShelf.app.plist",
    "~/Library/Saved Application State/com.IconShelf.app.savedState",
  ]
end
