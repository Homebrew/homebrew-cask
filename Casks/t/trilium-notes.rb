cask "trilium-notes" do
  version "0.62.5"
  sha256 "c3fa892dbe946c49a7b7e3f13789cd8baeb60fd1e447afb0c41d0e3715f1f6a7"

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
