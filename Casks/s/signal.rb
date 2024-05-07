cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.8.0"
  sha256 arm:   "7bc4cae1a63c3163ad3d2dfc16cff483bad265b970773cf0d4f0e27a5e5b2656",
         intel: "9525559f02c675ff8b52a1ba7eb4912905a49edbd18ffcedfa04ca1ad387c4a7"

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
