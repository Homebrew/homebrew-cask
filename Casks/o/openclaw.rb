cask "openclaw" do
  os macos: ".dmg", linux: "-amd64.AppImage"

  version "2026.11.8"
  sha256 arm:          "9b16a3c19da7529d4db7c7e91309fe3c8d58b94d6a72238d3a03bc94c295945f",
         intel:        "9b16a3c19da7529d4db7c7e91309fe3c8d58b94d6a72238d3a03bc94c295945f",
         x86_64_linux: "232e695e97a433aa517b6a19ba11680cff210ee788bff605e8dd8028655fabce"

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
