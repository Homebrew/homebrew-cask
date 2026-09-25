cask "trilium-notes" do
  arch arm: "arm64", intel: "x64"

  version "0.106.0"
  sha256 arm:   "1453b7d14cf4c22d461addbad3ca73f43c6c0fa622c9449e969ea83bf54493ff",
         intel: "6fee4d0489356fd11c323f9ab7d625f06b9aa142f1a96987f8893b4f49a89a99"

  url "https://github.com/TriliumNext/Trilium/releases/download/v#{version}/TriliumNotes-v#{version}-macos-#{arch}.dmg"
  name "TriliumNext Notes"
  desc "Hierarchical note taking application"
  homepage "https://triliumnext.github.io/Docs/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Trilium Notes.app"

  zap trash: [
    "~/Library/Application Support/trilium-data",
    "~/Library/Application Support/TriliumNext Notes",
    "~/Library/Preferences/com.electron.triliumnext-notes.plist",
    "~/Library/Saved Application State/com.electron.triliumnext-notes.savedState",
  ]
end
