cask "markjason" do
  version "0.26"
  sha256 "8e22459ec64bc61d78b3751fb5c06dcee478f48fc0746a88645c873cade95d1f"

  url "https://github.com/gijsverheijke/markjason-landing/releases/download/v0.1-3/markjason-#{version}.dmg",
      verified: "github.com/gijsverheijke/markjason-landing/"
  name "markjason"
  desc "Lightweight macOS editor for Markdown, JSON, and .env files"
  homepage "https://markjason.sh"

  livecheck do
    url "https://github.com/gijsverheijke/markjason-landing/releases/latest/download/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "markjason.app"

  zap trash: [
    "~/Library/Application Support/com.markjason.app",
    "~/Library/Caches/com.markjason.app",
    "~/Library/Preferences/com.markjason.app.plist",
    "~/Library/Saved Application State/com.markjason.app.savedState",
  ]
end
