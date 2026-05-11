cask "macmd-viewer" do
  version "1.2.1"
  sha256 "a189d96898f47d8fdf609269abf454d122a8699949cca7549af176d43cea10db"

  url "https://github.com/macmdviewer/MacMDViewer/releases/download/v#{version}/MacMDViewer.dmg",
      verified: "github.com/macmdviewer/MacMDViewer/"
  name "MacMD Viewer"
  desc "Native SwiftUI Markdown viewer for macOS with QuickLook and Mermaid support"
  homepage "https://macmdviewer.com"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "MacMD Viewer.app"

  zap trash: [
    "~/Library/Caches/com.arthur.MarkdownViewer",
    "~/Library/HTTPStorages/com.arthur.MarkdownViewer",
    "~/Library/Preferences/com.arthur.MarkdownViewer.plist",
    "~/Library/Saved Application State/com.arthur.MarkdownViewer.savedState",
  ]
end
