cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.22.2"
  sha256 arm:   "8dc9dff53b285363a06c0dca68debad4378f61ae4352515764354cc996de7e1f",
         intel: "dfd21d2678dc40322db9298e2ca62a757cce53c64eb7022554d34e928e35693e"

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
