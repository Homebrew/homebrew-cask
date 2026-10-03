cask "calyx" do
  version "0.45.1"
  sha256 "e77132bf5b806ae7eae9ba433e117ff618aa90c5bbf2aa6c3a9979e41851a31a"

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
