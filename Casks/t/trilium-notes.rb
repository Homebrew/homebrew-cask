cask "trilium-notes" do
  arch arm: "arm64", intel: "x64"

  version "0.104.0"
  sha256 arm:   "29cde238b42a0a9dc20c49a1d990f2bd678ce46b64a5eb7c05bf796321cac63f",
         intel: "81759f41f540cb9c8e36b8c5cd093f3ebc6cbc8b35a0baefbc0c771bda9a81ed"

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
