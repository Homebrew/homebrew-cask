cask "chatgpt" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional intel: "-x64"

  version "26.901.51231"
  sha256 arm:   "8ddc4e0f0e7c8024d64169f84cf54c544778d1d8bfea1ffd3c2b0d2e3ea85934",
         intel: "6e285fa74dbf56698d0565802a3b37cea235f4ff9c57925d3b78d50cb148078b"

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
