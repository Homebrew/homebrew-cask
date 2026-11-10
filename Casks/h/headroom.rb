cask "headroom" do
  os macos: "mac.dmg", linux: "amd64.AppImage"

  version "0.9.59"
  sha256 arm:          "4480bd53d2f7e8d74adaf9e12210d7c958825cdc2b5c35be477ff15f42cd4930",
         x86_64_linux: "a0a12e9df0c9066db2238935ba2bb6d21f8b2d741fddec972d7f4547fd0f4c37"

  on_macos do
    depends_on arch: :arm64
    depends_on macos: :sonoma

    app "Headroom.app"

    uninstall launchctl: "com.extraheadroom.headroom",
              quit:      "com.extraheadroom.headroom"

    zap trash: [
      "~/.headroom",
      "~/Library/Application Support/Headroom",
      "~/Library/Caches/com.extraheadroom.headroom",
      "~/Library/HTTPStorages/com.extraheadroom.headroom",
      "~/Library/HTTPStorages/com.extraheadroom.headroom.binarycookies",
      "~/Library/LaunchAgents/com.extraheadroom.headroom.plist",
      "~/Library/LaunchAgents/Headroom.plist",
      "~/Library/Logs/Headroom",
      "~/Library/Preferences/com.extraheadroom.headroom.plist",
      "~/Library/Saved Application State/com.extraheadroom.headroom.savedState",
      "~/Library/WebKit/com.extraheadroom.headroom",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "Headroom_#{version}_amd64.AppImage", target: "Headroom.AppImage"

    zap trash: [
      "~/.cache/com.extraheadroom.headroom",
      "~/.config/com.extraheadroom.headroom",
      "~/.headroom",
      "~/.local/share/com.extraheadroom.headroom",
    ]
  end

  url "https://github.com/gglucass/headroom-desktop/releases/download/v#{version}/Headroom_#{version}_#{os}"
  name "Headroom"
  desc "Reduce token usage for Claude Code and Codex"
  homepage "https://extraheadroom.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
end
