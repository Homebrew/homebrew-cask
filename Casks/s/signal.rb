cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.37.0"
  sha256 arm:   "150f239294308360267fe76434746ef131a4c81abe75ac6da46c16ae662b5e3b",
         intel: "ae14f5eef08cc0fdfafad3633557e1d8b0f576fdc2693e5b2f11c6bbe3bad97e"

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
