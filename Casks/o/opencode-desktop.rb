cask "opencode-desktop" do
  os macos: "mac", linux: "linux"
  url_arch = on_system_conditional macos: on_arch_conditional(arm: "arm64", intel: "x64"),
                                   linux: on_arch_conditional(arm: "arm64", intel: "x86_64")
  url_ext = on_system_conditional macos: "dmg", linux: "AppImage"

  version "2.2.3"
  sha256 arm:          "712ac7d1043a244a8c34a45fd698b3d18fea41e3d9a5670ac7562a6d5d98e195",
         intel:        "b6af18474ec621e99954ec571be401fa4bd2e8432c2644a12a7f82e042987029",
         arm64_linux:  "65b611ee7caa4135f40ad4948e03614c09c8b97e2b2f687e3dc26cb7f9ecfe17",
         x86_64_linux: "438f0290d90e5bb6b329cb19d959921e2de63b87d7712bff0c1cb25fc254632e"

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
