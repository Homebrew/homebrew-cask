cask "freellmapi" do
  arch arm: "-arm64", intel: on_system_conditional(macos: "-x64")
  os macos: "-macos"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.16.50"
  sha256 arm:          "581a1d0df3ca80368fe1c35fd6814edbb1002d05da4461b2f57e1128466b6d70",
         intel:        "dcd8830eaccf0e151feedb41efe4bd0d258cdb5fa64e00972a00d695654632a7",
         x86_64_linux: "cd1305768338254d15c551656e1268229ab803643dfe042d12e3974e848ffe3b"

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
