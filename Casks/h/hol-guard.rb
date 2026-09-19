cask "hol-guard" do
  version "3.0.92"
  sha256 "fd5486f2f96fac8cadd3341a2a1b004d0da89802a2add0aa010c85b6168c5af7"

  # Public download API (302 to release asset). Private GitHub release URLs 404 unauthenticated.
  url "https://hol.org/api/guard/desktop/download?platform=macos&version=3.0.92",
      verified: "hol.org/"
  name "HOL Guard"
  desc "Local-first runtime firewall for AI coding agents"
  homepage "https://hol.org/guard"

  livecheck do
    url "https://hol.org/guard/install"
    regex(/HOL-Guard-Desktop[._-]v?(\d+(?:\.\d+)+)[._-]aarch64/i)
  end

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "HOL Guard.app"

  zap trash: [
    "~/Library/Application Support/org.hol.guard.desktop",
    "~/Library/Caches/org.hol.guard.desktop",
    "~/Library/Preferences/org.hol.guard.desktop.plist",
    "~/Library/Saved Application State/org.hol.guard.desktop.savedState",
    "~/.hol-guard",
  ]
end
