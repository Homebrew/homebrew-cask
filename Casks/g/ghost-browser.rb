cask "ghost-browser" do
  arch arm: "_arm64"

  version "2.1.5.2"
  sha256 arm:   "a889cc9748c15c64f2430ca81225abc7a302968f63e0e1500c408132de4ab94e",
         intel: "fbb124f1594e309ae958dd63e35e4ab457b7b86b41d1532cf3bbaadb66e3fe3e"

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
