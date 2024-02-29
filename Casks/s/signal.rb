cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.0.0"
  sha256 arm:   "1c58f558aae693eaab9ef07a7d460c2199a85d3323da8de85c62388550819e42",
         intel: "2ac5539660ac506c46a19f9d29a906b466b572a2de39f45b79439b3523007f57"

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
