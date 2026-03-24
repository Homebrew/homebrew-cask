cask "codex-app" do
  version "26.323.20928"
  sha256 "67fc274d32849e30bbe60426bd8465094acb7d2b5bbf4a1953a8a41fa7a97eda"

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
