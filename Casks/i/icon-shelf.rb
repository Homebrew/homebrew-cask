cask "icon-shelf" do
  arch arm: "-arm64"

  version "0.1.24"
  sha256 arm:   "5004379dfb9f2658fc85c871a5cfe6a5a55f0e81774e293a7d538e0d0e2515fe",
         intel: "8081c28e6b03a0302ad56bd59100c486db73e3b14fd98accdb4121f87100112d"

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
