cask "freellmapi" do
  arch arm: "arm64", intel: "x64"

  version "0.16.21"
  sha256 arm:   "4128b1cec1b7245520bb1339ab252807bda6163243c4e9d399178e3314e41252",
         intel: "18bc3fbceb35250ae5fc02348f9105ab1ef3345ce740d8bf829b003d274da19d"

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
