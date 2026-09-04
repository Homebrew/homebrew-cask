cask "markviewer" do
  version "1.8.6"
  sha256 "22066cf82b3713f3a6a81788adbc7d2c5ac40f59c05f066099199dfecb3fac7f"

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
    "~/Library/Preferences/com.markviewer.markviewer.plist",
    "~/Library/Saved Application State/com.markviewer.markviewer.savedState",
    "~/Library/WebKit/com.markviewer.markviewer",
  ]
end
