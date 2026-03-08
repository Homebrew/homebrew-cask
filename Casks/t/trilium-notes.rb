cask "trilium-notes" do
  arch arm: "arm64", intel: "x64"

  version "0.102.1"
  sha256 arm:   "8a3a4fba774cde560750a31bfba9c66ddefdc356d1a2966094926ed3766d147c",
         intel: "4d3403aa1fbf65ed9f8acaddccfa9b1360edc56c060525a7c166c24f07b3650c"

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
