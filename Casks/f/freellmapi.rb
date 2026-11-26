cask "freellmapi" do
  arch arm: "-arm64", intel: on_system_conditional(macos: "-x64")
  os macos: "-macos"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.16.46"
  sha256 arm:          "e072768e1bf1e5793b2b37f485ab062e421ce89c13203be8ea0a1a2da1225d02",
         intel:        "a602a7da81c3238658bf97b25e6b458a24fbd2a0bac84b72f1ae2bdeee2a1bfa",
         x86_64_linux: "0bb3cb5d13ccc70164cf877869ca54d3af84ce7c4674ef1b7be309cc54b2bf6f"

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
