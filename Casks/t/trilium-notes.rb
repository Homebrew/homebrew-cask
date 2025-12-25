cask "trilium-notes" do
  arch arm: "arm64", intel: "x64"

  version "0.101.0"
  sha256 arm:   "4fba9ee76d0cb44659b2afea5726b50245467c83c7fefd13796ad5bb0652147f",
         intel: "21c47fab18ee36a238b0d86e10e2c889327ce7bba1564ec47f92fbeced73b5ef"

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
