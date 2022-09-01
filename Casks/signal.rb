cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "5.57.0"
  sha256 arm:   "a529ae529e3c8559946d48856a9d5561fcfe48ff4fe35b00d25d05b1ef3cd63d",
         intel: "e93c4d1f5d3de3f6c909d4dbd14fce8db0ca17a3a64161613512ed7eab847617"

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
