cask "ghost-browser" do
  arch arm: "_arm64"

  version "2.4.0.1"
  sha256 arm:   "33ac084baded6e530ee5203494b62efe04e1ef96016e132e6ff6aee5f5e314fa",
         intel: "33656bf6b5a1e85cc9015fec84d9e17e919e546b5ef0e1110e6a6819d7b5955d"

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
