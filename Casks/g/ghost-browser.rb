cask "ghost-browser" do
  arch arm: "_arm64"

  version "2.4.1.1"
  sha256 arm:   "56dd15df862e841b36247af04cd1e7a54a276075fb70a031002ef9d9e30b635a",
         intel: "759e131ca75ca6f0143a49ab5bf121d5b6867595ecea1f5f37bc1160b1d28833"

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
