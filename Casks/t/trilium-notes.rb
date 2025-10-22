cask "trilium-notes" do
  arch arm: "arm64", intel: "x64"

  version "0.99.3"
  sha256 arm:   "9ec9a56ce8814357e22dc2ae275d168434d18eda64e8ec72443e906b241ea12f",
         intel: "e496abdd69ff7402f9f53d8eb239f0ceda63ba3f7358bee52c7a418e6b9e715b"

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
