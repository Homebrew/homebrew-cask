cask "trilium-notes" do
  arch arm: "arm64", intel: "x64"

  version "0.99.1"
  sha256 arm:   "17dbfba321b18179a867ca229ee28efdb42d1db0887d889b3928a60cde8716f1",
         intel: "4ec10a385c55ce81f435c2295baed0fed9afe201f2757f368be3af475a9b2b25"

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
