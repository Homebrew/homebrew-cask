cask "codex-app" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional intel: "-x64"

  version "26.623.70822"
  sha256 arm:   "4a29862faa4e4ceb177f7cb9fcbf93b65f42a3ddfda69ed9c1e8dfe2a0edb58b",
         intel: "8e063c272c4ad8f190e79408d01cbd2af9bf48540a2a014c3ed467ec7d0d3957"

  url "https://persistent.oaistatic.com/codex-app-prod/Codex-darwin-#{arch}-#{version}.zip",
      verified: "persistent.oaistatic.com/codex-app-prod/"
  name "Codex"
  desc "OpenAI's Codex desktop app for managing coding agents"
  homepage "https://openai.com/codex"

  livecheck do
    url "https://persistent.oaistatic.com/codex-app-prod/appcast#{livecheck_arch}.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :monterey

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
