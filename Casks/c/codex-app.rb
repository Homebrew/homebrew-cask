cask "codex-app" do
  arch arm: "arm64", intel: "x64"

  version "26.417.41555"
  sha256 arm:   "5cd157c770584f743bd2855e3e4ebf5558b82a4d4130ea4928b701aa1d4513a5",
         intel: "6ca5c99222cc55e4891443539c54d378c5b2daec819575826dd34cce509d5aeb"

  url "https://persistent.oaistatic.com/codex-app-prod/Codex-darwin-#{arch}-#{version}.zip",
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

  app "Codex.app"

  uninstall quit: "com.openai.codex"

  zap trash: [
        "~/Library/Application Support/Codex",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.openai.codex.sfl*",
        "~/Library/Caches/com.openai.codex",
        "~/Library/HTTPStorages/com.openai.codex",
        "~/Library/HTTPStorages/com.openai.codex.binarycookies",
        "~/Library/Logs/com.openai.codex",
        "~/Library/Preferences/com.openai.codex.plist",
        "~/Library/Saved Application State/com.openai.codex.savedState",
      ],
      rmdir: "~/.codex"
end
