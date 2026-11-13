cask "chatgpt" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional intel: "-x64"

  version "26.1111.21308"
  sha256 arm:   "8186e39bb166199f648979c7e26c14891908905da3f454b8e6fc2c23a739bae7",
         intel: "c4c9603e73c9c95897a6682d4504df55d3e5a5696da95da21edd08a704afa032"

  url "https://persistent.oaistatic.com/codex-app-prod/ChatGPT-darwin-#{arch}-#{version}.zip"
  name "ChatGPT"
  desc "OpenAI's official ChatGPT desktop app"
  homepage "https://chatgpt.com/"

  livecheck do
    url "https://persistent.oaistatic.com/codex-app-prod/appcast#{livecheck_arch}.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

  app "ChatGPT.app"

  uninstall quit: "com.openai.codex"

  zap trash: [
        "/Library/Application Support/CodexComputerUseAuthorizationPlugin",
        "~/Library/Application Scripts/*.com.openai.sky.CUAService",
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
