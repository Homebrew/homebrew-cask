cask "trilium-notes" do
  arch arm: "arm64", intel: "x64"

  version "0.101.3"
  sha256 arm:   "2bc3fc3e4b955a8aa54f93b950ec9e70880b4a86f1368cef290ae9484eb6db8d",
         intel: "6cc5fdb359d187e1bc7d932680765fed10a3091a60af68cdfd71c50ba183f893"

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
