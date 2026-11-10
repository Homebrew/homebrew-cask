cask "opencode-desktop" do
  os macos: "mac", linux: "linux"
  url_arch = on_system_conditional macos: on_arch_conditional(arm: "arm64", intel: "x64"),
                                   linux: on_arch_conditional(arm: "arm64", intel: "x86_64")
  url_ext = on_system_conditional macos: "dmg", linux: "AppImage"

  version "2.2.7"
  sha256 arm:          "aaa236b7601ef07fd95c496dea9d29886bbde391f71642967f2b61fd22e02b78",
         intel:        "8cc4845d7432afffc53a7a464b04092b3b399c5727d4992071a19fa940613e19",
         arm64_linux:  "ee4917170c5287416db0e5b5e77576725a2d54e2ac65f302affdc3222aa44e05",
         x86_64_linux: "8a54709fde6e596497059fab6162b5231edf26ed612ff1d23d0b1d517828fed0"

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
