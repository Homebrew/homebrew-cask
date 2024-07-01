cask "ghost-browser" do
  arch arm: "_arm64"

  sha256 arm:   "60c2d73bab0784b69675697e1a233a5021419b7431156da256758e9344b9662e",
         intel: "63dc9782cdadd80f240071385d4698acd4fd69bf3bec8a0a768a65188de32046"

  on_arm do
    version "2.3.0.4"
  end
  on_intel do
    version "2.3.0.3"
  end

  url "https://downloads.ghostbrowser.com/GhostBrowser-#{version}#{arch}.dmg"
  name "Ghost Browser"
  desc "Web browser"
  homepage "https://ghostbrowser.com/"

  livecheck do
    url "http://ghostbrowser.s3.amazonaws.com/updates/macosx/manifest#{arch}"
    regex(/^(\d+(?:\.\d+)+)\n/i)
  end

  auto_updates true

  app "Ghost Browser.app"

  zap trash: [
    "~/Library/Application Support/GhostBrowser",
    "~/Library/Caches/GhostBrowser",
    "~/Library/Preferences/com.ghostbrowser.gb1.plist",
    "~/Library/Saved Application State/com.ghostbrowser.gb1.savedState",
  ]
end
