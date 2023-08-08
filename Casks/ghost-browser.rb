cask "ghost-browser" do
  arch arm: "_arm64"

  version "2.1.5.1"
  sha256 arm:   "8e52acb5f51a3bb047198100703fff09f78299fdc302076c836493029420e5a2",
         intel: "6b7facebe7c00c33a651c1a1288b8049608f38d617f33f96d1902a726b24e341"

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
