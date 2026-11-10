cask "freellmapi" do
  arch arm: "arm64", intel: "x64"

  version "0.16.24"
  sha256 arm:   "707f80128c30bc1806a4015dcfc8dd0c985dc8a3e4138ff944a91c17c74ecf1e",
         intel: "8e3430d30854aa806741436d97b4192ae2fd446958242ca559645e5ed6fd5055"

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
