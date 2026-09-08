cask "headroom" do
  version "0.9.12"
  sha256 "7f1ac5f04fdc2e13773e7f1aa7338a8461a03f65c8d49460424e883ce749875d"

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
