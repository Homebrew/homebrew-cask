cask "nimbalyst" do
  arch arm: "arm64", intel: "x64"

  version "0.71.2"
  sha256 arm:   "3291e9a182ac77ab62d96312613c65d1c5a29942cedf164832a9aa6cc506686b",
         intel: "817bc7c1343e37691d6e4ca997db8e4b80d9e68f79c043432a014900649ae0b8"

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
