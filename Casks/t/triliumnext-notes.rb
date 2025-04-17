cask "triliumnext-notes" do
  arch arm: "arm64", intel: "x64"

  version "0.93.0"
  sha256 arm:   "9268ce38a584214b75f265b304968df1575480912ec3ce65e17f94dbccacad90",
         intel: "66856caf81ed6236f2b47155a19534aaa2ec491fc19eb1ecd23fc2cbe18aba8f"

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
