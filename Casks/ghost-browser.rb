cask "ghost-browser" do
  arch arm: "_arm64"

  version "2.1.5.0"
  sha256 arm:   "81c9bc8422eec081ed57dc679ef96963f5fcdc281fa4d30623991e5a6325c223",
         intel: "a34ddf892a030d875e35051848833059756feed25412c5a8e209edbb2877a16d"

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
