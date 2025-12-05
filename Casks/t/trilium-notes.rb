cask "trilium-notes" do
  arch arm: "arm64", intel: "x64"

  version "0.100.0"
  sha256 arm:   "78332a73d036635aa0134ef811983a8f9637239db6df6f3549be1322d34aea3a",
         intel: "0702b2470fa2a704f8c14492f6276d255301834ee65dbb66e1d94655382386ab"

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
