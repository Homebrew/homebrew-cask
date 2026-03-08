cask "trilium-notes" do
  arch arm: "arm64", intel: "x64"

  version "0.102.0"
  sha256 arm:   "cd6f5281e82970bbdb67ac565f241e73d2de1658ca1a2a6865b1ab12668136f2",
         intel: "a9ef5c69bd3aa8ad9d90a3dab31ee05104517b24a2606a849e63186e6eef6515"

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
