cask "amethyst-nostr" do
  version "1.14.0"
  sha256 "84a1bdaf3577ed7375ab65c48358efd3c609fa47b504de61f4e8fc436f6b3436"

  url "https://github.com/vitorpamplona/amethyst/releases/download/v#{version}/amethyst-desktop-#{version}-macos-arm64.dmg"
  name "Amethyst"
  desc "Nostr client"
  homepage "https://github.com/vitorpamplona/amethyst"

  livecheck do
    url :url
    strategy :github_latest
  end

  # The unrelated tiling window manager (cask `amethyst`, ianyh/Amethyst) also
  # installs `Amethyst.app`, so the two cannot coexist in /Applications.
  conflicts_with cask: "amethyst"
  depends_on arch: :arm64
  depends_on :macos

  app "Amethyst.app"

  # Verified against the source, not the docs:
  #   ~/.amethyst                            DesktopAccountStorage (accounts + keys)
  #   ~/Library/Application Support/Amethyst DesktopTorManager (tor/)
  #   ~/Library/Caches/AmethystDesktop       Coil image cache
  #
  # Deliberately NOT zapped: ~/Library/Preferences/com.apple.java.util.prefs.plist.
  # The app uses the Java Preferences API, which writes to that single SHARED
  # plist — deleting it would wipe every other Java app's preferences too.
  zap trash: [
    "~/.amethyst",
    "~/Library/Application Support/Amethyst",
    "~/Library/Caches/AmethystDesktop",
  ]
end
