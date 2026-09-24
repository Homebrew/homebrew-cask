cask "nimbalyst" do
  arch arm: "arm64", intel: "x64"

  version "0.78.5"
  sha256 arm:   "b8f42f976322f9a0ed8e4c6a8e2189e98f2b9ff5ef421cbfd1cacdf3475191eb",
         intel: "10cc995ecc1c7de55d7dda16e36ef9af34271235d3ffec8b06493148e7639f70"

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
