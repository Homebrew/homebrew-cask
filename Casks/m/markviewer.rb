cask "markviewer" do
  version "1.8.18"
  sha256 "cd48586ce35535ca0f3657c2218897736244c44b8545998a90028935194f8108"

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
