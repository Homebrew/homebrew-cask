cask "openclaw" do
  os macos: ".dmg", linux: "-amd64.AppImage"

  version "2026.10.10"
  sha256 arm:          "d94df702cd813ef852b2b306bae912e0f2fba0a102d0df5d4c3ed9c8902a8263",
         intel:        "d94df702cd813ef852b2b306bae912e0f2fba0a102d0df5d4c3ed9c8902a8263",
         x86_64_linux: "75d650363faf7993f3603af4cdd7ffa4806b4cc7eac94287eb5934d332ac2ff3"

  on_macos do
    depends_on macos: :tahoe

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
