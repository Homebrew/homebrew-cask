cask "openclaw" do
  os macos: ".dmg", linux: "-amd64.AppImage"

  version "2026.9.9"
  sha256 arm:          "f42c8a1e9fe8d8c84dc43f7de71f7d659685596971fc28f699ca75c87c90dd17",
         intel:        "f42c8a1e9fe8d8c84dc43f7de71f7d659685596971fc28f699ca75c87c90dd17",
         x86_64_linux: "a1c8358329968f7c9fde2d00a68a22a48da4deb52df60e3eaedaeb3566564ac6"

  on_macos do
    depends_on macos: :sequoia

    app "OpenClaw.app"

    zap trash: [
      "~/.openclaw",
      "~/Library/Application Support/OpenClaw",
      "~/Library/Caches/ai.openclaw.mac",
      "~/Library/HTTPStorages/ai.openclaw.mac",
      "~/Library/HTTPStorages/bot.molt.mac",
      "~/Library/Logs/DiagnosticReports/OpenClaw*",
      "~/Library/Preferences/ai.openclaw.mac.plist",
      "~/Library/Preferences/ai.openclaw.shared.plist",
      "~/Library/Preferences/bot.molt.mac.plist",
      "~/Library/Preferences/bot.molt.shared.plist",
      "~/Library/WebKit/ai.openclaw.mac",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "OpenClaw-#{version}-amd64.AppImage", target: "OpenClaw.AppImage"

    zap trash: [
      "~/.cache/ai.openclaw.linux",
      "~/.config/ai.openclaw.linux",
      "~/.local/share/ai.openclaw.linux",
      "~/.openclaw",
    ]
  end

  url "https://github.com/openclaw/openclaw/releases/download/v#{version}/OpenClaw-#{version}#{os}"
  name "OpenClaw"
  desc "Personal AI assistant"
  homepage "https://openclaw.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
end
