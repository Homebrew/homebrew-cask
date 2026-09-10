cask "markviewer" do
  version "1.8.8"
  sha256 "4f2ee9026300e47fd01f86ba6dced1d3a3ac7b27505530ff88baae635099faca"

  url "https://github.com/SeungbinBaik/markviewer-releases/releases/download/v#{version}/MarkViewer.dmg"
  name "MarkViewer"
  desc "Minimal markdown editor"
  homepage "https://markviewer.com/"

  livecheck do
    url "https://github.com/SeungbinBaik/markviewer-releases"
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "MarkViewer.app"

  zap trash: [
    "~/Library/Application Support/com.markviewer.markviewer",
    "~/Library/Caches/com.markviewer.markviewer",
    "~/Library/Logs/com.markviewer.markviewer",
    "~/Library/Preferences/com.markviewer.markviewer.plist",
    "~/Library/Saved Application State/com.markviewer.markviewer.savedState",
    "~/Library/WebKit/com.markviewer.markviewer",
  ]
end
