cask "ghost-browser" do
  arch arm: "_arm64"

  version "2.2.0.1"
  sha256 arm:   "5d7e2415663034a518d3c90fa5c7973d8056096fe96b4d893165b7ef5d42bccb",
         intel: "86ed74f3b4529680ccdd49aa7e4414462795fdf9b73fd44a2b93d11e32d9e278"

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
