cask "icon-shelf" do
  arch arm: "-arm64"

  version "0.1.27"
  sha256 arm:   "9b5a1346a6c5a8cc1aec5cc074b6fed58d200505aef53d392d1ac06fd172095c",
         intel: "c7b4361269f79b34b3948816c3366fa76ac8011b11196ef3e96431f74bf78a6a"

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
