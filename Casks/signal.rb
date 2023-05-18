cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.18.0"
  sha256 arm:   "b599eaaa7ffeba94e9c603a4bb7343ae2a6ecf1550c5c44006f8ff91bbd48c60",
         intel: "b0d40ab70998f6fcaf02da77cc3096d713a5692101f32e0aa967b37decd5e359"

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
