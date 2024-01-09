cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.43.2"
  sha256 arm:   "4ac31590f9747c3f1f8852989b46082f1b870700337c0c111d1e7fb755582b5f",
         intel: "1fe8b0e283417b5211736a8911bcb078195e92a800b62643e4ddb67ac9809e3c"

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
