cask "mindroom" do
  version "2026.10.30"
  sha256 "7d0e09befea90013fac0f66744ec82723edd96784bbb8711ad2ae58050b08ffe"

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
