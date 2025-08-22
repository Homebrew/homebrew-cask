cask "trilium-notes" do
  arch arm: "arm64", intel: "x64"

  version "0.98.0"
  sha256 arm:   "9830893bd311b1dcc47c2489ea6760bf0369b8ecb4c43131d46eaccbd6569ef1",
         intel: "347e05dbb114df10065766b614a05bc046ef215fe932511390de0a31697079d9"

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
