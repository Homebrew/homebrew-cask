cask "trilium-notes" do
  version "0.62.2"
  sha256 "68adaa6ed7a59728b1c6a03e0ebe38d09a4ba17a374a4dc4390c12d7eee4c50f"

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
