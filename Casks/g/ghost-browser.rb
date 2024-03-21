cask "ghost-browser" do
  arch arm: "_arm64"

  version "2.3.0.1"
  sha256 arm:   "d1cfe797c3e37d27620c150ca93b3581f92a094eba0f77cd9f7ce279238f403f",
         intel: "083608ccb1b1b8a5699f2f7759eaa1f9bd56b5761161aa06c465cc6a49bb7e02"

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
