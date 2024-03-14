cask "ghost-browser" do
  arch arm: "_arm64"

  version "2.3.0.0"
  sha256 arm:   "434a2d6ed87e1f1662900248e72718c8e9de706477121998a92025b89b1a0efa",
         intel: "d3c656515be4e02a130b3f6154bb388796d3aa92075022934c87c650c512dcca"

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
