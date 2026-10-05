cask "amethyst-nostr" do
  version "1.17.0"
  sha256 "0eddf23c98e8f5d18788c12b83376f7db260118a5a97781b604caf82ae5e905c"

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
  ]
end
