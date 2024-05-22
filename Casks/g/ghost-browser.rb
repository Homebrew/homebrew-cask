cask "ghost-browser" do
  arch arm: "_arm64"

  version "2.3.0.3"
  sha256 arm:   "9e74fc6416df60f7dea22e14d41ab0670d11304a1b3ba4e9d6b6e5d33935d304",
         intel: "63dc9782cdadd80f240071385d4698acd4fd69bf3bec8a0a768a65188de32046"

  url "https://downloads.ghostbrowser.com/GhostBrowser-#{version}#{arch}.dmg"
  name "Ghost Browser"
  desc "Web browser"
  homepage "https://ghostbrowser.com/download/"

  livecheck do
    url "https://ghostbrowser.s3.amazonaws.com/updates/changelog.html"
    regex(/>\s*Version\s*(\d+(?:\.\d+)+)/i)
  end

  app "Ghost Browser.app"

  zap trash: [
    "~/Library/Application Support/GhostBrowser",
    "~/Library/Caches/GhostBrowser",
    "~/Library/Preferences/com.ghostbrowser.gb1.plist",
    "~/Library/Saved Application State/com.ghostbrowser.gb1.savedState",
  ]
end
