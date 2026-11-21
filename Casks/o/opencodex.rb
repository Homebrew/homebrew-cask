cask "opencodex" do
  version "2.100.8"
  sha256 "53a193afc9f471a0f48d6e25c56349d7b3e5409e3a5bd4f38701c1c28266f171"

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
