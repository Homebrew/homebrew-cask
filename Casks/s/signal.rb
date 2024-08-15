cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.20.0"
  sha256 arm:   "b3eafd4069bef65d8542a969e8e592e0b44002949f766bf6da2a6497646d8780",
         intel: "8afe3b81e06e42c0ef17b4c92a58eeb7fcb94ea725e66001ae6c02e6c0aac090"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{arch}-#{version}.dmg"
  name "Signal"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Signal.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
