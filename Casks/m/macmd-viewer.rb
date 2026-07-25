cask "macmd-viewer" do
  version "1.5.1"
  sha256 "80fc17b9e69e2c32cf04ba0870eebc4e58b38147a515fbe9f35311a5a52636b3"

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
    "~/Library/Caches/com.arthur.MarkdownViewer",
    "~/Library/HTTPStorages/com.arthur.MarkdownViewer",
    "~/Library/Preferences/com.arthur.MarkdownViewer.plist",
    "~/Library/Saved Application State/com.arthur.MarkdownViewer.savedState",
  ]
end
