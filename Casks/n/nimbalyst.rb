cask "nimbalyst" do
  arch arm: "arm64", intel: "x64"

  version "0.75.5"
  sha256 arm:   "cb7d20a6d3f56285efa5561cd3eb5e29cfa85ca131f23c6b6ff65c5d95e8f1fb",
         intel: "2df9d569bf7b4468c2f3e9914c1aa035a6d1d354e74b3b7ad2e5c73381a82ca2"

  url "https://github.com/Nimbalyst/nimbalyst/releases/download/v#{version}/Nimbalyst-macOS-#{arch}.dmg",
      verified: "github.com/Nimbalyst/nimbalyst/"
  name "Nimbalyst"
  desc "Visual workspace for building with Codex and Claude Code"
  homepage "https://nimbalyst.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Nimbalyst.app"

  zap trash: [
    "~/Library/Application Support/@nimbalyst",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.nimbalyst.electron.sfl*",
    "~/Library/Preferences/com.nimbalyst.electron.plist",
  ]
end
