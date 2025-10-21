cask "trilium-notes" do
  arch arm: "arm64", intel: "x64"

  version "0.99.2"
  sha256 arm:   "09a3bd79d5882a3933c2e3a444b8e0ebb5d69168355b6ae4c059dddd7d5a215a",
         intel: "51569c8ed78e8c934649d7f025d3188243fbe99ab045d000d969382f51d6f367"

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
