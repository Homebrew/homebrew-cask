cask "ghost-browser" do
  arch arm: "_arm64"

  version "2.1.5.3"
  sha256 arm:   "d0300160847efdecc44bae2ea7c4efea98fbc6cd17664e6b93096b062b93896d",
         intel: "60ac496bbfb255fa88454a0648ec74ae0d2d6a9611f0d4b3531d691e05a3e8ce"

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
