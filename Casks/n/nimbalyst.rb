cask "nimbalyst" do
  arch arm: "arm64", intel: "x64"

  version "0.81.7"
  sha256 arm:   "8b0100c459215609200bc99e29d3c29aa8dcef4ebefd9f5fefa2edd01dbb6de1",
         intel: "c94fe44c86a9aff772bdb4a2a92277a8dc3572b12e88c46888fa151c43c5781f"

  url "https://github.com/Nimbalyst/nimbalyst/releases/download/v#{version}/Nimbalyst-macOS-#{arch}.dmg"
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
