cask "nimbalyst" do
  arch arm: "arm64", intel: "x64"

  version "0.72.8"
  sha256 arm:   "1b66c5bd9bc90b1981ea61cfb999ede5902718dafd5158e29c3052242709ebb1",
         intel: "cc5d16349bee4ca1515c98ffe4cdf4d8513b10d5529a4d5966e3a6af5b70c68a"

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
