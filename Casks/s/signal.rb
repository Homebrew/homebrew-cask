cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.30.0"
  sha256 arm:   "90922565d34ab1cbc7e1932e2c8e93eac29e2809c768981acdd375c4c9dc2e26",
         intel: "8b7dd252733f8ea25ca731cc9238c0d71498d99d648b95325c6895b15641a85c"

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
