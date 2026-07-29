cask "chatgpt" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional intel: "-x64"

  version "26.721.81911"
  sha256 arm:   "a373727d40d9efe8cc762df444a07b5233071ff1cd6307465a73f025b1d69344",
         intel: "4e237b5b0b092225522b1380ca93a52242bcef1fed9ce33d2bf304e2993b844c"

  url "https://persistent.oaistatic.com/codex-app-prod/ChatGPT-darwin-#{arch}-#{version}.zip",
      verified: "persistent.oaistatic.com/codex-app-prod/"
  name "ChatGPT"
  desc "OpenAI's official ChatGPT desktop app"
  homepage "https://chatgpt.com/"

  livecheck do
    url "https://persistent.oaistatic.com/codex-app-prod/appcast#{livecheck_arch}.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :monterey

  app "ChatGPT.app"

  uninstall quit: "com.openai.codex"

  zap trash: [
        "/Library/Application Support/CodexComputerUseAuthorizationPlugin",
        "~/Library/Application Support/Codex",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.openai.codex.sfl*",
        "~/Library/Application Support/com.openai.codex",
        "~/Library/Application Support/OpenAI/Codex",
        "~/Library/Caches/Codex",
        "~/Library/Caches/com.openai.codex",
        "~/Library/Caches/com.openai.sky.CUAService",
        "~/Library/Group Containers/*.com.openai.sky.CUAService",
        "~/Library/HTTPStorages/com.openai.codex",
        "~/Library/HTTPStorages/com.openai.codex.binarycookies",
        "~/Library/HTTPStorages/com.openai.sky.CUAService",
        "~/Library/HTTPStorages/com.openai.sky.CUAService.binarycookies",
        "~/Library/Logs/com.openai.codex",
        "~/Library/Preferences/com.openai.codex.plist",
        "~/Library/Preferences/com.openai.sky.CUAService.cli.plist",
        "~/Library/Preferences/com.openai.sky.CUAService.plist",
        "~/Library/Saved Application State/com.openai.codex.savedState",
      ],
      rmdir: "~/.codex"
end
