cask "nimbalyst" do
  arch arm: "arm64", intel: "x64"

  version "0.79.1"
  sha256 arm:   "a0bea0bb9ffcf053149d7e7ecc8c94618e76ae29cce182f6ae7dd8fc0f65d4c4",
         intel: "3bd5327a7bb93428d4733fa22b87423286ec6f48237af8f81761f924ffb97405"

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
