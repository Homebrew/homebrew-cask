cask "amethyst-nostr" do
  version "1.20.0"
  sha256 "bb7fa5df11c98a19dbc78a4393e1db01e7ea969fde5dcbc43e312237da0462ad"

  url "https://github.com/vitorpamplona/amethyst/releases/download/v#{version}/amethyst-desktop-#{version}-macos-arm64.dmg"
  name "Amethyst"
  desc "Nostr client"
  homepage "https://github.com/vitorpamplona/amethyst"

  conflicts_with cask: "amethyst"
  depends_on arch: :arm64
  depends_on :macos

  app "Amethyst.app"

  zap trash: [
    "~/.amethyst",
    "~/Library/Application Support/Amethyst",
    "~/Library/Caches/AmethystDesktop",
    "~/Library/Preferences/com.vitorpamplona.amethyst.plist",
  ]
end
