cask "trilium-notes" do
  arch arm: "arm64", intel: "x64"

  version "0.106.1"
  sha256 arm:   "8d25e356d690152a2288d0317712cb198e270b1dca5b66df70496593f951f9a3",
         intel: "94b79b526d4f6a7e26dd3daf09be863d0752286053723183669c0770672db732"

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
