cask "opencode-desktop" do
  os macos: "mac", linux: "linux"
  url_arch = on_system_conditional macos: on_arch_conditional(arm: "arm64", intel: "x64"),
                                   linux: on_arch_conditional(arm: "arm64", intel: "x86_64")
  url_ext = on_system_conditional macos: "dmg", linux: "AppImage"

  version "2.3.2"
  sha256 arm:          "2c46269132d2acbd8a73ed931bb61fa39fd17e80facd815193c536c3ae4e052c",
         intel:        "c9a59afda0860667cab904423d8ab0c1b63adb181a57f125f84e63e6555b93c3",
         arm64_linux:  "425ed1215763c161800d9082e18f8805bc7858168ca313b5ffe1064b2ad79bae",
         x86_64_linux: "92af002bf5a99d3eaa64c73546f77298e897a83f6a94091d3237b5d325908e13"

  on_macos do
    depends_on macos: :ventura

    app "OpenCode.app"

    zap trash: [
      "~/Library/Application Support/ai.opencode.desktop",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/ai.opencode.desktop.sfl*",
      "~/Library/Caches/ai.opencode.desktop",
      "~/Library/HTTPStorages/ai.opencode.desktop",
      "~/Library/Logs/ai.opencode.desktop",
      "~/Library/Preferences/ai.opencode.desktop.plist",
      "~/Library/Saved Application State/ai.opencode.desktop.savedState",
      "~/Library/WebKit/ai.opencode.desktop",
    ]
  end
  on_linux do
    app_image "opencode-desktop-linux-#{url_arch}.AppImage", target: "OpenCode.AppImage"

    zap trash: [
      "~/.cache/OpenCode",
      "~/.config/OpenCode",
      "~/.local/share/ai.opencode.desktop",
    ]
  end

  url "https://opencode.ai/files/bin/#{version}/opencode-desktop-#{os}-#{url_arch}.#{url_ext}"
  name "OpenCode"
  desc "AI coding agent desktop client"
  homepage "https://opencode.ai/"

  livecheck do
    url "https://opencode.ai/update/api/latest/desktop/opencode/latest-mac.yml",
        user_agent: :browser
    strategy :electron_builder
  end

  auto_updates true
end
