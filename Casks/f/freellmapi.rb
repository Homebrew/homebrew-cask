cask "freellmapi" do
  arch arm: "-arm64", intel: on_system_conditional(macos: "-x64")
  os macos: "-macos"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.16.31"
  sha256 arm:          "f0115d7605b585a8c547b75ef6389b2fffe6f3b10e02e33d212686db922a04b2",
         intel:        "e81529dfb0624c4c2f96b9495c5afbf3a583531eb0d8c0b73b95db52a337ade1",
         x86_64_linux: "7097eecbc19d6987af4fb3a50976f47899dd3a962c4d21d1a95efacf4c852167"

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
