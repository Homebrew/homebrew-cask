cask "openclaw" do
  os macos: ".dmg", linux: "-amd64.AppImage"

  version "2026.11.2"
  sha256 arm:          "53ab24e504e3871d04668de9b5bc90eb38ae6f9075bd356e12da53d4348944ba",
         intel:        "53ab24e504e3871d04668de9b5bc90eb38ae6f9075bd356e12da53d4348944ba",
         x86_64_linux: "6f74823614e97d051abc3e1d6bb1f80716c2b574b829bfae1a04b6639b721482"

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
