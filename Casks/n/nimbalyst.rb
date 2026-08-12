cask "nimbalyst" do
  arch arm: "arm64", intel: "x64"

  version "0.73.2"
  sha256 arm:   "9ad5325a3fd4c2a1880f116d75285afe46a174e2fc9f20ca04b8bf893f0cc1c5",
         intel: "556b40bfe7b37024dbf36e27961f4af38c79322b1c090d22922b0002f04e2ff5"

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
