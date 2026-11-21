cask "opencodex" do
  version "2.100.7"
  sha256 "587f2c7f80d80a9a27e222d838899f98f212e06d5b7874d212a1f902145ebd17"

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
