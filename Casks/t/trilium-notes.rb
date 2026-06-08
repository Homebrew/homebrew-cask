cask "trilium-notes" do
  arch arm: "arm64", intel: "x64"

  version "0.103.0"
  sha256 arm:   "f086230502d3d77e01f9940332c307c89adee7167cf8e3604f8e8e2ea7c93fb1",
         intel: "747100a8f77601437889f4a12d9e92f221a90dbf6e67e22b740f7260907f9686"

  url "https://github.com/TriliumNext/Trilium/releases/download/v#{version}/TriliumNotes-v#{version}-macos-#{arch}.dmg",
      verified: "github.com/TriliumNext/Trilium/"
  name "TriliumNext Notes"
  desc "Hierarchical note taking application"
  homepage "https://triliumnext.github.io/Docs/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Trilium Notes.app"

  zap trash: [
    "~/Library/Application Support/trilium-data",
    "~/Library/Application Support/TriliumNext Notes",
    "~/Library/Preferences/com.electron.triliumnext-notes.plist",
    "~/Library/Saved Application State/com.electron.triliumnext-notes.savedState",
  ]
end
