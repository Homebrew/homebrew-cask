cask "nimbalyst" do
  arch arm: "arm64", intel: "x64"

  version "0.74.3"
  sha256 arm:   "a563b724bc7febc43908132e69192290f57da1b041def880e250eb429384535e",
         intel: "b4e57b7ddc9eb10dce6a5cef4a85b09d42a13a6e980ba5b271af3aa9ea02c5ec"

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
