cask "codex-app" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional intel: "-x64"

  version "26.623.30605"
  sha256 arm:   "62d7133e9e754efae8a90831052c3ffe078c9628675c294c3b61146aea7d403d",
         intel: "f433aec47247109877c75cae81a7893b01963f04ab9dfca270aeddc0a8ee9308"

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
