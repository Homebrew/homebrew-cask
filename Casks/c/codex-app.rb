cask "codex-app" do
  version "260204.1342"
  sha256 "1e9f4f7e17c5b8a69c841c23dd648b46ba569b7d4797533db9c536a7a820a79e"

  url "https://persistent.oaistatic.com/codex-app-prod/Codex-darwin-arm64-#{version}.zip",
      verified: "persistent.oaistatic.com/codex-app-prod/"
  name "Codex"
  desc "OpenAI's Codex desktop app for managing coding agents"
  homepage "https://openai.com/codex"

  livecheck do
    url "https://persistent.oaistatic.com/codex-app-prod/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :monterey"
  depends_on arch: :arm64

  app "Codex.app"

  uninstall quit: "com.openai.codex"

  zap trash: [
    "~/.codex",
    "~/Library/Application Support/Codex",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.openai.codex.sfl*",
    "~/Library/Caches/com.openai.codex",
    "~/Library/HTTPStorages/com.openai.codex",
    "~/Library/HTTPStorages/com.openai.codex.binarycookies",
    "~/Library/Logs/com.openai.codex",
    "~/Library/Preferences/com.openai.codex.plist",
    "~/Library/Saved Application State/com.openai.codex.savedState",
  ]
end
