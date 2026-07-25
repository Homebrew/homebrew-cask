cask "trilium-notes" do
  arch arm: "arm64", intel: "x64"

  version "0.104.1"
  sha256 arm:   "1df46773720ffb2187822d63a0a7fdcd568e92cf8a2100898163d067021dec3e",
         intel: "00fc87853029f8931ec5310760ad229af1812b62e3ba3af12258dbefd3b99abe"

  url "https://github.com/TriliumNext/Trilium/releases/download/v#{version}/TriliumNotes-v#{version}-macos-#{arch}.dmg",
      verified: "github.com/TriliumNext/Trilium/"
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
