cask "trilium-notes" do
  arch arm: "arm64", intel: "x64"

  version "0.101.1"
  sha256 arm:   "24d45ccc9b7e1268c57c0fc31441242c3dfad8e21252ce77ef9a34e3b1da6c38",
         intel: "5d55dc9743e0cbd5f27d88fed94e2a811198f27fc89777aa3e2a4a6b20228eea"

  url "https://github.com/TriliumNext/Trilium/releases/download/v#{version}/TriliumNotes-v#{version}-macos-#{arch}.dmg",
      verified: "github.com/TriliumNext/Trilium/"
  name "TriliumNext Notes"
  desc "Hierarchical note taking application"
  homepage "https://triliumnext.github.io/Docs/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Trilium Notes.app"

  zap trash: [
    "~/Library/Application Support/trilium-data",
    "~/Library/Application Support/TriliumNext Notes",
    "~/Library/Preferences/com.electron.triliumnext-notes.plist",
    "~/Library/Saved Application State/com.electron.triliumnext-notes.savedState",
  ]
end
