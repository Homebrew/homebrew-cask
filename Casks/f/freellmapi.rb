cask "freellmapi" do
  arch arm: "arm64", intel: "x64"

  version "0.16.20"
  sha256 arm:   "b97b3763abd10564466c960503ea098b356b392cf062b343d059ee11d2c87dcb",
         intel: "5b90fad62027714312e11aaf9be50f7bef5f2c90f4a04fc6b4965178abea7f3b"

  url "https://github.com/tashfeenahmed/freellmapi/releases/download/v#{version}/FreeLLMAPI-#{version}-#{arch}.dmg"
  name "FreeLLMAPI"
  desc "Local OpenAI-compatible LLM router"
  homepage "https://freellmapi.co/"

  auto_updates true
  depends_on macos: :monterey

  app "FreeLLMAPI.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.freellmapi.desktop.sfl*",
    "~/Library/Application Support/FreeLLMAPI",
    "~/Library/Preferences/com.freellmapi.desktop.plist",
    "~/Library/Saved Application State/com.freellmapi.desktop.savedState",
  ]
end
