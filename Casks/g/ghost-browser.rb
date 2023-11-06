cask "ghost-browser" do
  arch arm: "_arm64"

  version "2.2.0.0"
  sha256 arm:   "a467d130aecfc65fedabfad81fb6b07b28a2c94c5591e6fa20646ab02c494733",
         intel: "dbfaf2c3e198351a813efa65cc273350cfcbec3b98d26184fbdd7651193b0114"

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
