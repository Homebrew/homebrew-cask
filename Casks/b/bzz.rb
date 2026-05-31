cask "bzz" do
  version "0.3.0"
  sha256 "ca9a0192c2ebad98bb8ce087505285a0e720039692ff297f08f2d45f62cd3483"

  url "https://github.com/zlopixatel/bzz/releases/download/v#{version}/Bzz.dmg",
      verified: "github.com/zlopixatel/bzz/"
  name "Bzz"
  desc "Open-source automatic keyboard layout switcher for Russian and English typing"
  homepage "https://github.com/zlopixatel/bzz"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates false
  depends_on macos: :monterey

  app "Bzz.app"

  zap trash: [
    "~/Library/Application Support/Bzz",
    "~/Library/LaunchAgents/com.zlopixatel.bzz.plist",
    "~/Library/Logs/Bzz",
  ]

  caveats <<~EOS
    Bzz needs Accessibility permission to read keystrokes:
      System Settings → Privacy & Security → Accessibility → enable Bzz

    The app is signed and notarized by the developer (Roman Kovalev,
    TeamID 7FJC4XM2S5) so Gatekeeper should not block it on first launch.

    Privacy policy: https://zlopixatel.github.io/bzz/privacy.html
    No telemetry, no network calls, source code is MIT on GitHub.
  EOS
end
