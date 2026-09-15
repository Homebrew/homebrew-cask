cask "nimbalyst" do
  arch arm: "arm64", intel: "x64"

  version "0.77.5"
  sha256 arm:   "2e5945e9fd624bdb2b54b43236930cf40959f1ea8819e4928c607303fe306043",
         intel: "702c5782daf835080ba97c5b10bfcc28bfd3cd67a14b47535cb29f778f10cb9f"

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
