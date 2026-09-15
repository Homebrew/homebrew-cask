cask "macmd-viewer" do
  version "1.6.2"
  sha256 "f38d641dc993e13fa9fac01ddbb51c863a6762523c39a0ea1d672813b51883d5"

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
