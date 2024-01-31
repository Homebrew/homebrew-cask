cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.46.0"
  sha256 arm:   "b2ac8bb2995d1eb54e7399d93ca36fe4d9042966b7fa72932c08e6ce3a8fec1b",
         intel: "e92dc9a8f08090253715f218d93ba6cc75fa0a09830c4b4264fcb7bfb8d0fac8"

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
