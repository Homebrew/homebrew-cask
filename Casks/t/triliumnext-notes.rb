cask "triliumnext-notes" do
  arch arm: "arm64", intel: "x64"

  version "0.92.7"
  sha256 arm:   "76d8a84b62e38aedb4c88a7f6c8a48ea1596d808169d36b4f1f07dba90ccc1f5",
         intel: "da10d1a526c9e1fa34e8841b441997b63a3527bfdd62c996f5b2529f37408e38"

  url "https://github.com/TriliumNext/Notes/releases/download/v#{version}/TriliumNextNotes-v#{version}-macos-#{arch}.dmg",
      verified: "github.com/TriliumNext/Notes/"
  name "TriliumNext Notes"
  desc "Hierarchical note taking application"
  homepage "https://triliumnext.github.io/Docs/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "TriliumNext Notes.app"

  zap trash: [
    "~/Library/Application Support/trilium-data",
    "~/Library/Application Support/TriliumNext Notes",
    "~/Library/Preferences/com.electron.triliumnext-notes.plist",
    "~/Library/Saved Application State/com.electron.triliumnext-notes.savedState",
  ]
end
