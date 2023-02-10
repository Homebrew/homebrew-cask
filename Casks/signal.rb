cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.5.0"
  sha256 arm:   "ce784cfd8b1450bfa82374aa080ef18e88dc23787b3e78d768fed0f1b7143c44",
         intel: "3000593ce0b4ae81ac1a75325539f8167d5ee21e723bc44f7d0c8acc140db3fb"

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
