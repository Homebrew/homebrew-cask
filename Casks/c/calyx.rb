cask "calyx" do
  version "0.46.0"
  sha256 "1343f2cdb7c54b863ce7b07b04818d55ff6b948ed28a686d1e874a81d94e8207"

  url "https://github.com/yuuichieguchi/Calyx/releases/download/v#{version}/Calyx.zip"
  name "Calyx"
  desc "Terminal for running and supervising coding agents"
  homepage "https://github.com/yuuichieguchi/Calyx"

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
