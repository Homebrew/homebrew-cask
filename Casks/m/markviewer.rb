cask "markviewer" do
  version "1.8.5"
  sha256 "8c6bc5331dca9398d29bbab1b3066b372553619f4f284863ebddfc83dc0cfbf7"

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
