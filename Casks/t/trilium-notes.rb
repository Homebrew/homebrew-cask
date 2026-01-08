cask "trilium-notes" do
  arch arm: "arm64", intel: "x64"

  version "0.101.2"
  sha256 arm:   "b0f19484fff2ca74e8a32d995615269e1285ff7b38d5217ed4494650e60045da",
         intel: "d421b91f952be0e03d70c69691a76520e5b65287ed8ac2f56b32bf7a48ebc360"

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
