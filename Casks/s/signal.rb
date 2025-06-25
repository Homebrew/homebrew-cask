cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.59.0"
  sha256 arm:   "36b29f817163e71f452bd4a6bd03cfc4f43cf731e2e49f02b19ee312b9d5da43",
         intel: "20a03f166236f5fa4240d4c897d43ccd31335cc9647161421a80fbe7c99527dd"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{arch}-#{version}.zip"
  name "Signal"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Signal.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
