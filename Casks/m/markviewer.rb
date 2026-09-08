cask "markviewer" do
  version "1.8.7"
  sha256 "01142ca50556f95d79275633b81be422c724a2d9b72edc38875564b4b99d8368"

  url "https://github.com/SeungbinBaik/markviewer-releases/releases/download/v#{version}/MarkViewer.dmg"
  name "MarkViewer"
  desc "Minimal markdown editor"
  homepage "https://markviewer.com/"

  livecheck do
    url "https://github.com/SeungbinBaik/markviewer-releases"
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :big_sur

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
