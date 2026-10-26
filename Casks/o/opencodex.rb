cask "opencodex" do
  version "2.92.0"
  sha256 "78d9e5e365e95a0c778a0c59e8d0e28ad590d6eec7310c94a60f0e416363314c"

  url "https://github.com/lidge-jun/opencodex/releases/download/v#{version}/OpenCodex-#{version}-macos.dmg"
  name "OpenCodex"
  desc "Universal provider proxy for OpenAI Codex and Claude Code"
  homepage "https://opencodex.me/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "OpenCodex.app"

  uninstall launchctl: "com.opencodex.proxy",
            quit:      "com.opencodex.desktop"

  zap trash: [
    "~/.opencodex",
    "~/Library/Application Support/com.opencodex.desktop",
    "~/Library/Caches/com.opencodex.desktop",
    "~/Library/Preferences/com.opencodex.desktop.plist",
    "~/Library/Saved Application State/com.opencodex.desktop.savedState",
    "~/Library/WebKit/com.opencodex.desktop",
  ]
end
