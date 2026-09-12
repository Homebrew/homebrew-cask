cask "calyx" do
  version "0.41.0"
  sha256 "777231172b270fcac630b3ddd415c5268d8f87016e8a86f573b5830bf1d5e9d9"

  url "https://github.com/yuuichieguchi/Calyx/releases/download/v#{version}/Calyx.zip"
  name "Calyx"
  desc "Ghostty-based terminal for running and supervising coding agents"
  homepage "https://github.com/yuuichieguchi/Calyx"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :tahoe

  app "Calyx.app"
  binary "#{appdir}/Calyx.app/Contents/Resources/bin/calyx"

  uninstall quit: "com.calyx.terminal"

  zap launchctl: "com.calyx.sessiond",
      trash:     [
        "~/.calyx",
        "~/.config/calyx",
        "~/.config/opencode/plugins/calyx-agent-monitor.js",
        "~/.grok/hooks/calyx.json",
        "~/.pi/agent/extensions/calyx.ts",
        "~/Library/Application Support/Calyx",
        "~/Library/Application Support/com.calyx.terminal",
        "~/Library/Caches/com.calyx.terminal",
        "~/Library/HTTPStorages/com.calyx.terminal",
        "~/Library/Preferences/com.calyx.terminal.plist",
        "~/Library/Saved Application State/com.calyx.terminal.savedState",
        "~/Library/WebKit/com.calyx.terminal",
      ]
end
