cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.44.1"
  sha256 arm:   "8fe2ca879fba2c6a4ab85712ae444866645e07fa802d1aa40bd3b6e2d86023db",
         intel: "599c9eac34f78391125ea836a7cfa5de27838688f9f3b6f1f75bdb8451af5b3a"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{arch}-#{version}.dmg"
  name "Signal"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Signal.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
