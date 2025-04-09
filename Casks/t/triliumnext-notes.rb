cask "triliumnext-notes" do
  arch arm: "arm64", intel: "x64"

  version "0.92.6"
  sha256 arm:   "c1cbaa47982b02fdfdfc1fb8c07aa24237a7c431c5892b8fa03a8b084597c016",
         intel: "aaf6db58a44c339879294512da07093ac1cff44b93a00afe3500ff82ca4d427c"

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
