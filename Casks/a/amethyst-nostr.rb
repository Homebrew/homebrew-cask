cask "amethyst-nostr" do
  version "1.21.0"
  sha256 "4c58f200807d4589b203447e65aec8ba8d44cc68452c4e82a338157feb557965"

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
