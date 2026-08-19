cask "trilium-notes" do
  arch arm: "arm64", intel: "x64"

  version "0.105.0"
  sha256 arm:   "8c282f94c3e5c1243e3ec1f41ad4d6990a07bf6dce2f9eb8aee04f64deb35dc1",
         intel: "fbc21207bfc573da933d32f7cb6373d217cc90891756b19dff546aaa26e085e6"

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
