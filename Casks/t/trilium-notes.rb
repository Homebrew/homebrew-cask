cask "trilium-notes" do
  arch arm: "arm64", intel: "x64"

  version "0.102.2"
  sha256 arm:   "e8dd6d6885d5cb79c3ecc2579e3ec2ba15a226bcd22f09ba7a517d59fff4319b",
         intel: "037507dd1334e6794cbf2bcc980895f289f0ea62ddc45b8793fd26902c18165a"

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
