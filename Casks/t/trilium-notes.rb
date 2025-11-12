cask "trilium-notes" do
  arch arm: "arm64", intel: "x64"

  version "0.99.5"
  sha256 arm:   "08e096afbd6b222c3536b08583a845bb250e7bfffac8125129096a3811ea0577",
         intel: "dfdee37665fad26c45a8ed7265de0eac8da60b936694bae4ec771f1272f9704e"

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
