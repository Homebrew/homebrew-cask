cask "freellmapi" do
  arch arm: "arm64", intel: "x64"

  version "0.16.26"
  sha256 arm:   "d213e578d1599edd4da1a751175d6ac4c0650220888ea4ccb33555a04db7ddf0",
         intel: "542270d7a898c8024ab1fa5ebf5d1ef8d012537604f56211448d8175518db088"

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
