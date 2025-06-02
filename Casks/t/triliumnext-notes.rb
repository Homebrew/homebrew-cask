cask "triliumnext-notes" do
  arch arm: "arm64", intel: "x64"

  version "0.94.0"
  sha256 arm:   "7e384342319f07670ec1a7a78578299def6b9eeb3823ee1a7245b8d39c6fbdc6",
         intel: "2c63ae136b1fe5abc4effe2164a8d1fdb4d9a131740e8d10495b536c8a1d6a59"

  url "https://github.com/TriliumNext/Notes/releases/download/v#{version}/TriliumNextNotes-v#{version}-macos-#{arch}.dmg",
      verified: "github.com/TriliumNext/Notes/"
  name "TriliumNext Notes"
  desc "Hierarchical note taking application"
  homepage "https://triliumnext.github.io/Docs/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "TriliumNext Notes.app"

  zap trash: [
    "~/Library/Application Support/trilium-data",
    "~/Library/Application Support/TriliumNext Notes",
    "~/Library/Preferences/com.electron.triliumnext-notes.plist",
    "~/Library/Saved Application State/com.electron.triliumnext-notes.savedState",
  ]
end
