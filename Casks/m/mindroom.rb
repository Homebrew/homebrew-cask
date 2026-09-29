cask "mindroom" do
  version "2026.9.370"
  sha256 "b051350d20b90403480ce9931648b6f7066fc85f1a466aded1eebd211b39f5f8"

  url "https://github.com/mindroom-ai/mindroom/releases/download/v#{version}/MindRoom.dmg"
  name "MindRoom"
  desc "Self-hostable AI stack for multi-user, multi-agent workflows on Matrix"
  homepage "https://github.com/mindroom-ai/mindroom"

  # Upstream typically creates 10-20 releases per day, so this throttles
  # versions to roughly one update per day.
  livecheck do
    url :url
    throttle 10
  end

  auto_updates true
  depends_on macos: :sonoma

  app "MindRoom.app"

  uninstall launchctl: "chat.mindroom.local",
            quit:      "chat.mindroom.menubar"

  zap trash: [
    "~/Library/LaunchAgents/chat.mindroom.local.plist",
    "~/Library/Logs/mindroom",
    "~/Library/Preferences/chat.mindroom.menubar.plist",
  ]
end
