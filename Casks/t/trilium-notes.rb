cask "trilium-notes" do
  arch arm: "arm64", intel: "x64"

  version "0.107.0"
  sha256 arm:   "e3bda6547213396bd497bd680f33b0d0b12ed9dff410a10b3998cdaf72d9a231",
         intel: "93331bd8c05a8229a468cae38c612575e87a2a6074c86a8d36c19faaa14bf6d7"

  url "https://github.com/TriliumNext/Trilium/releases/download/v#{version}/TriliumNotes-v#{version}-macos-#{arch}.dmg"
  name "TriliumNext Notes"
  desc "Hierarchical note taking application"
  homepage "https://triliumnext.github.io/Docs/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Trilium Notes.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.trilium-notes.sfl*",
    "~/Library/Application Support/trilium-data",
    "~/Library/Application Support/TriliumNext Notes",
    "~/Library/Preferences/com.electron.trilium-notes.plist",
    "~/Library/Preferences/com.electron.triliumnext-notes.plist",
    "~/Library/Saved Application State/com.electron.triliumnext-notes.savedState",
  ]
end
