cask "macmd-viewer" do
  version "1.6.5"
  sha256 "ba118096518de7516f9f0621209117d9320495079dee4dd0d664d8c3c6117157"

  url "https://macmdviewer.com/downloads/v#{version}/MacMDViewer.dmg"
  name "MacMD Viewer"
  desc "Markdown viewer with QuickLook and Mermaid support"
  homepage "https://macmdviewer.com/"

  livecheck do
    url "https://github.com/macmdviewer/MacMDViewer/releases/latest"
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "MacMD Viewer.app"

  zap trash: [
    "~/Library/Application Scripts/com.arthur.MarkdownViewer",
    "~/Library/Application Scripts/group.com.arthur.MarkdownViewer",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.arthur.markdownviewer.sfl*",
    "~/Library/Caches/com.arthur.MarkdownViewer",
    "~/Library/Containers/com.arthur.MarkdownViewer",
    "~/Library/Group Containers/group.com.arthur.MarkdownViewer",
    "~/Library/HTTPStorages/com.arthur.MarkdownViewer",
    "~/Library/Preferences/com.arthur.MarkdownViewer.plist",
    "~/Library/Saved Application State/com.arthur.MarkdownViewer.savedState",
  ]
end
