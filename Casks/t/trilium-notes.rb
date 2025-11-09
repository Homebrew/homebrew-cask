cask "trilium-notes" do
  arch arm: "arm64", intel: "x64"

  version "0.99.4"
  sha256 arm:   "49775f9c1e2f39be7756f5cb77b816c04e86fd83377a1685226d5df5ccdeb3f5",
         intel: "f94c0d910f23bca8446eab1de06f1d76a01591e152b9dc04a8cb322a518fe83e"

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
