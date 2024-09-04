cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.24.0-beta.1"
  sha256 arm:   "71acce6cc6fa936df806580b605754dd510d64e492e24a0059ce1b9b99ea0fd7",
         intel: "d244cb3b1aa78649a08648dd29a6046eed55962cfcca32c3bce8d42189fb555b"

  url "https://updates.signal.org/desktop/signal-desktop-beta-mac-#{arch}-#{version}.dmg"
  name "Signal Beta"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://github.com/signalapp/Signal-Desktop"
    regex(/^v?(\d+(?:\.\d+)+[._-]beta\.\d+)$/i)
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Signal Beta.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
