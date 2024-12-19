cask "ghost-browser" do
  arch arm: "_arm64"

  version "2.4.0.4"
  sha256 arm:   "f2ea12e7e0222dcd8d5bdbac7eadf1a2bf681f59e0e9eb7d72c560617a7ea6da",
         intel: "25cfcedcd9b28642ce5c56240e6cf5cbd479a1e5806a56a54eb7b17b1331e12f"

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
