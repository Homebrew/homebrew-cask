cask "icon-shelf" do
  arch arm: "-arm64"

  version "0.1.18"
  sha256 arm:   "e7155f9c07e163d07bbde05d6147fa58f9dcd415c05eb0e7253c2e25c42929aa",
         intel: "a95316ca7866a0d8fdca2c344c94fb153865065804e049f2b10aaa4b09db9774"

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
