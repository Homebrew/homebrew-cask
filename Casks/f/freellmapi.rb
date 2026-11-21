cask "freellmapi" do
  arch arm: "-arm64", intel: on_system_conditional(macos: "-x64")
  os macos: "-macos"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.16.38"
  sha256 arm:          "e2065a60cf97620e94ed83d8eda73e5b8b77f44e9f48ea7edc8cc362b64ba4eb",
         intel:        "e6b667dfa890daa59eabad6a3b683680de40cb1f91c46574de44d43f40427eb4",
         x86_64_linux: "d54e0465e7210706f601f7919f8b677c6f98498f5d5232ad797dc5918ff3671c"

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
