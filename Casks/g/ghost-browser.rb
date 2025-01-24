cask "ghost-browser" do
  arch arm: "_arm64"

  version "2.4.1.0"
  sha256 arm:   "f7ff482faf3c77320ef2c0882aaec81cb6ea3bbcce6d0991a84a8d2ec1e67a17",
         intel: "2f8ef7bc62428ce98e8b5a7b525ab2e9b93ee55e88a39d3e5f526a5340e54892"

  url "https://downloads.ghostbrowser.com/GhostBrowser-#{version}#{arch}.dmg"
  name "Ghost Browser"
  desc "Web browser"
  homepage "https://ghostbrowser.com/"

  livecheck do
    url "https://ghostbrowser.s3.amazonaws.com/updates/macosx/manifest#{arch}"
    regex(/^(\d+(?:\.\d+)+)\n/i)
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Ghost Browser.app"

  zap trash: [
    "~/Library/Application Support/GhostBrowser",
    "~/Library/Caches/GhostBrowser",
    "~/Library/Preferences/com.ghostbrowser.gb1.plist",
    "~/Library/Saved Application State/com.ghostbrowser.gb1.savedState",
  ]
end
