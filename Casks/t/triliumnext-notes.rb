cask "triliumnext-notes" do
  arch arm: "arm64", intel: "x64"

  version "0.92.4"
  sha256 arm:   "e7b9a4a3d5c6b6092547fbe8bb61da076c640ab719512baab78e1da8dd099968",
         intel: "055b1ada56ff2508b1bbf56b7ec93325e73fd5248e7c1079bfa2f9505e41b7f8"

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
