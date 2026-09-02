cask "nimbalyst" do
  arch arm: "arm64", intel: "x64"

  version "0.76.2"
  sha256 arm:   "0e8a29595a25881a46aff110ae1d17afd9e718d641884a5ae3e763164b31bc13",
         intel: "4af7436ef8ac34091a9f8f8539dbd99a2319f643f56a52ac581245fe822a2b7b"

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
