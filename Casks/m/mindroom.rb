cask "mindroom" do
  version "2026.11.170"
  sha256 "b4fabb6bffad181c9d0341a4ea41f46644bfe3e38fe1111c78d8d811461f1999"

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
    "~/Library/Caches/chat.mindroom.menubar",
    "~/Library/LaunchAgents/chat.mindroom.local.plist",
    "~/Library/Logs/mindroom",
    "~/Library/Preferences/chat.mindroom.menubar.plist",
    "~/Library/WebKit/chat.mindroom.menubar",
  ]
end
