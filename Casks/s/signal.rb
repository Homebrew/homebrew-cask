cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.50.0"
  sha256 arm:   "3ba9566042e242a567f846ff96bcc9f05f1ec5c7f5f5c2b7349cae16a0e00700",
         intel: "2384a90d9a2efe0c9c8eaa29dad987feffd0860915446284b0db19930c37f4dc"

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
