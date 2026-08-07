cask "macmd-viewer" do
  version "1.6.1"
  sha256 "9ed84d7614c566707ab887c88056a060d944fc17a480fc4bbe428f21d4adba71"

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
