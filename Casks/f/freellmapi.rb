cask "freellmapi" do
  arch arm: "arm64", intel: "x64"

  version "0.16.23"
  sha256 arm:   "a7a00740f5caa28e40e84df97ecc1d9598e8b08d75dc09bd8920dd2e246774ae",
         intel: "b2037f267e2704a485931a4b81e46b2d7f2200a135911104cc84e1330f2026e6"

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
