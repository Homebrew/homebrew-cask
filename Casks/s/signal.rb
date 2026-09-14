cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "8.27.0"
  sha256 arm:   "0ba4aeddb3042de54520aee97e01bb325acb67876d59f743ae77353506967d0c",
         intel: "83ecc092ff6d4c040c33d6ff841e72007a0ce7babf75f193becfa055103996ad"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{arch}-#{version}.zip"
  name "Signal"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Signal.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
