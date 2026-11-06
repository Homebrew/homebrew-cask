cask "openclaw" do
  os macos: ".dmg", linux: "-amd64.AppImage"

  version "2026.11.1"
  sha256 arm:          "a2cec6d6eda0aa3a030a425ceaffe77ce4b556ba97ccdd5901e1b5cff7daa034",
         intel:        "a2cec6d6eda0aa3a030a425ceaffe77ce4b556ba97ccdd5901e1b5cff7daa034",
         x86_64_linux: "88df7d1a972ac3e7fcfd498138a7f294a9a9cd3f1bb3269dd84a2a9a3a3c963f"

  on_macos do
    depends_on macos: :tahoe

    app "OpenClaw.app"

    zap trash: [
      "~/.openclaw",
      "~/Library/Application Support/OpenClaw",
      "~/Library/Caches/ai.openclaw.mac",
      "~/Library/Caches/openclaw",
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
