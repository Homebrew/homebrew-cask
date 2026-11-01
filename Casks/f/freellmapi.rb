cask "freellmapi" do
  arch arm: "arm64", intel: "x64"

  version "0.16.19"
  sha256 arm:   "448e8429aa0d93dfeaecdbb98deb52697a7da78cedd2bced7665c1f93f4f8e3c",
         intel: "739a69c717259a00f6ccd44851f54bc62fdeff1a0413b81eae40f7af9f1da96c"

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
