cask "trilium-notes" do
  version "0.61.13"
  sha256 "383682d454200da33bd4221daedfb114651c044ab57ad965661d86308dafdcb1"

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
