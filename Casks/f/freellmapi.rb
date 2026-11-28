cask "freellmapi" do
  arch arm: "-arm64", intel: on_system_conditional(macos: "-x64")
  os macos: "-macos"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.16.51"
  sha256 arm:          "74ba0774953f75a652e3985a1734f264c40d71b47ded3de0ef82400c9e93ad64",
         intel:        "ebacbd75d3b105129372af2fda60e92e3a2982cfe30b1bb6c827121c80674d34",
         x86_64_linux: "5e43b98caf1888d9381e143dfb00c8e6eabcae856e35a003b21e7ed819523bf9"

  on_macos do
    depends_on macos: :monterey

    app "FreeLLMAPI.app"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.freellmapi.desktop.sfl*",
      "~/Library/Application Support/FreeLLMAPI",
      "~/Library/Preferences/com.freellmapi.desktop.plist",
      "~/Library/Saved Application State/com.freellmapi.desktop.savedState",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "FreeLLMAPI-#{version}.AppImage", target: "FreeLLMAPI.AppImage"

    zap trash: [
      "~/.cache/freellmapi-desktop-updater",
      "~/.config/FreeLLMAPI",
    ]
  end

  url "https://github.com/tashfeenahmed/freellmapi/releases/download/v#{version}/FreeLLMAPI-#{version}#{os}#{arch}.#{url_end}"
  name "FreeLLMAPI"
  desc "Local OpenAI-compatible LLM router"
  homepage "https://freellmapi.co/"

  auto_updates true
end
