cask "trilium-notes" do
  arch arm: "arm64", intel: "x64"

  version "0.97.2"
  sha256 arm:   "c93d21714c426ba7050023745d393b0f845d523d9a3ad32d1373fdec881067e5",
         intel: "1ac04472f374ea788d61492f6f67e2b0bc895c873fa8e1b510e2ad5b874387b6"

  url "https://github.com/TriliumNext/Trilium/releases/download/v#{version}/TriliumNotes-v#{version}-macos-#{arch}.dmg",
      verified: "github.com/TriliumNext/Trilium/"
  name "TriliumNext Notes"
  desc "Hierarchical note taking application"
  homepage "https://triliumnext.github.io/Docs/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Trilium Notes.app"

  zap trash: [
    "~/Library/Application Support/trilium-data",
    "~/Library/Application Support/TriliumNext Notes",
    "~/Library/Preferences/com.electron.triliumnext-notes.plist",
    "~/Library/Saved Application State/com.electron.triliumnext-notes.savedState",
  ]
end
