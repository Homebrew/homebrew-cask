cask "icon-shelf" do
  arch arm: "-arm64"

  version "0.1.25"
  sha256 arm:   "de1245dd6835dbc83ca30b244f79ba636e71c2d8e03b373d8463ebd94ceed7b3",
         intel: "d1d7cd6d39090f766950a27f2123c72965f5ef287ad1fa33c71c5fb1f70db49a"

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
