cask "ghost-browser" do
  arch arm: "_arm64"

  version "2.4.0.3"
  sha256 arm:   "6346f0414e7393f35742949276c26fcbe1e484752e3054046e61aff75183c58c",
         intel: "1f1b642f28f5aa8b65fdcc187af2444e15b5df0a212d8ddb611c3cdb1d3b1ee2"

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
