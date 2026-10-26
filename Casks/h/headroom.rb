cask "headroom" do
  os macos: "mac.dmg", linux: "amd64.AppImage"

  version "0.9.50"
  sha256 arm:          "03a4a52707e4eaf823aedff0467193dbf5d043556efcf4ea5bf36b0b78cfc50d",
         x86_64_linux: "53cda3734a28a0b0b89924c5859391d0e4defe8e40d3d0dc45c4b95b6a905a95"

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
