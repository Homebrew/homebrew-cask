cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.2.1"
  sha256 arm:   "638ca1fa6e75a9690a3fddcc79cda86a040e4af7aa00cc0f815af00032312f6c",
         intel: "d1184a9eb58749fe080f0877db004f6e2142bf9b25de69af5f71cdbba52a1019"

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
