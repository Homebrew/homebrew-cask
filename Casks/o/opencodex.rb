cask "opencodex" do
  version "2.100.9"
  sha256 "a913792be1181d60f46e52c81139c2b9dcaf14f2350be05874db0b383052017c"

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
