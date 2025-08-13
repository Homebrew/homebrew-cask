cask "ghost-browser" do
  arch arm: "_arm64"

  version "2.4.1.2"
  sha256 arm:   "20795a29d22017b475f3696ff5c4dae71ce3329802328f7c9aa8f761bd42030f",
         intel: "eeab090b35b67f92cd815314159eda38f023062f24a274fa57df42c68e003825"

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
