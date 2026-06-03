cask "codex-app" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional intel: "-x64"

  version "26.527.60818"
  sha256 arm:   "9fc39db92a88769cbbe409a465931d7406959210d127e742d193e0617d06585f",
         intel: "0c4039678eb945f4eaefa52bf177f6bf8144dd606af851d5a975524453060891"

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
