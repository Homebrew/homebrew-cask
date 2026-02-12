cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.89.0"
  sha256 arm:   "adb638350a4ee2f7bd22c3e67d07f9cf7fd67a86fc4e58fcb4e33614e6b6e138",
         intel: "a3090cf61411fe383cec9ad2ed3b2ab34d7393049a08b3f9e4410fdcfd9f3c96"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{arch}-#{version}.zip"
  name "Signal"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Signal.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
