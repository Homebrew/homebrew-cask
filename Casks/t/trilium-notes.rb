cask "trilium-notes" do
  version "0.62.3"
  sha256 "5276fb165de1324e2337b9c93df40ae4c098e7b4bd8400017a21a9a22546e572"

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  name "Trilium Notes"
  desc "Personal knowledge base"
  homepage "https://github.com/zadam/trilium"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "trilium-mac-x64/Trilium Notes.app"

  zap trash: [
    "~/Library/Application Support/Trilium Notes",
    "~/Library/Application Support/trilium-data",
    "~/Library/Preferences/com.electron.trilium-notes.plist",
    "~/Library/Saved Application State/com.electron.trilium-notes.savedState",
  ]
end
