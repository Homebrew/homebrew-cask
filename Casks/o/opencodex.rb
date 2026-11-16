cask "opencodex" do
  version "2.100.4"
  sha256 "f6c83b562db80053535d930fdb51ae651ba26888686c2901cc59e586a25d0e11"

  url "https://github.com/lidge-jun/opencodex/releases/download/v#{version}/OpenCodex-#{version}-macos.dmg"
  name "OpenCodex"
  desc "Proxy that connects AI coding agents to other LLM providers"
  homepage "https://opencodex.me/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "OpenCodex.app"

  uninstall launchctl: [
              "com.opencodex.proxy",
              "OpenCodex",
            ],
            quit:      "com.opencodex.desktop"

  zap trash: [
    "~/.opencodex",
    "~/.opencodex-desktop",
    "~/Library/Application Scripts/com.opencodex.desktop.widget",
    "~/Library/Application Support/com.opencodex.desktop",
    "~/Library/Caches/com.opencodex.desktop",
    "~/Library/Containers/com.opencodex.desktop.widget",
    "~/Library/LaunchAgents/OpenCodex.plist",
    "~/Library/Preferences/com.opencodex.desktop.plist",
    "~/Library/Saved Application State/com.opencodex.desktop.savedState",
    "~/Library/WebKit/com.opencodex.desktop",
  ]
end
