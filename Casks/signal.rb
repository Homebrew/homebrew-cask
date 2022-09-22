cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "5.60.0"
  sha256 arm:   "723a88a24a6844cccb4e0731c4dd5c76c5c7ab173fe220f73e7c46b54b1b7f0d",
         intel: "16e87bf2461071b2d1a3736c0448fcc85fa12c68af5ec1559203263f47842079"

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
