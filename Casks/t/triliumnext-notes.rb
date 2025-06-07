cask "triliumnext-notes" do
  arch arm: "arm64", intel: "x64"

  version "0.94.1"
  sha256 arm:   "1448281ab40042f1a2f3d8513f84439cef9cb8b466c554fe26904dabf7d2db61",
         intel: "101d3bfc66912a31e05468c300e3ad1fa897c1011d8e13deacd73a56acee2d84"

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
