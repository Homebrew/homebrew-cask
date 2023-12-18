cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.42.0"
  sha256 arm:   "f28302eb3b62698f4d3133d2c3cf3ad8c90f2faba5359ea82cde2fc2a95fd195",
         intel: "8b4fcf7cace310c3175c41a5c9909bf77348d5f618d46b3867a407bcf7a1da2c"

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
