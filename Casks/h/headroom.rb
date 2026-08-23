cask "headroom" do
  version "0.8.7"
  sha256 "791b39158ba6ad6c88a5b87ceef429acf61d9f2d77faacf9d9b7cb4f7d43cfcc"

  url "https://github.com/gglucass/headroom-desktop/releases/download/v#{version}/Headroom_#{version}_mac.dmg"
  name "Headroom"
  desc "Reduce token usage for Claude Code and Codex"
  homepage "https://extraheadroom.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma
  depends_on arch: :arm64

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
