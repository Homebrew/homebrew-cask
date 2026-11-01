cask "freellmapi" do
  version "0.16.15"
  sha256 arm:   "851ed2ea4c7c267d2f16408aa706c9b390049b446e498c7f5b2226d621f0668b",
         intel: "f852bee2533b61d0d6bff5a281ac8fe2912a414340d6625e3dd5d5f3492f053d"

  url "https://github.com/tashfeenahmed/freellmapi/releases/download/v#{version}/FreeLLMAPI-#{version}-#{arch}.dmg"
  name "FreeLLMAPI"
  desc "Local OpenAI-compatible LLM router"
  homepage "https://freellmapi.co/"

  auto_updates true
  depends_on macos: :monterey

  app "FreeLLMAPI.app"

  zap trash: [
    "~/Library/Preferences/com.freellmapi.desktop.plist",
    "~/Library/Saved Application State/com.freellmapi.desktop.savedState",
  ]
end
