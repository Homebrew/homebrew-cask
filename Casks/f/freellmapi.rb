cask "freellmapi" do
  arch arm: "arm64", intel: "x64"

  version "0.16.22"
  sha256 arm:   "9a21b4d3bb0e1e6325a63db6d384fe2f9067a0f5f116be722831992dbdc92c6f",
         intel: "4d6b6277e8aacaaafaae5a041d21f4740c17f4d8dbbd5953d80ebf9070b560e6"

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
