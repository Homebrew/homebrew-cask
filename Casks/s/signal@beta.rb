cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.35.0-beta.1"
  sha256 arm:   "68bc924d6f2c47e4b7ed8b951f6a01debb30374a6a7d87237cee771582509e55",
         intel: "091dd19c9a01c4d6cc45465f5b87ac4fce918c5db7bcf9b01cb7fb57504bb54e"

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
