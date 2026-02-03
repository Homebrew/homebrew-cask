cask "codex-app" do
  version "260202.0859"
  sha256 "ff4ba0f4f8fabacd3fd22cac5d7b0c2257091b5344c7d0de19612653e03944e3"

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
