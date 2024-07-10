cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.16.0-beta.2"
  sha256 arm:   "53004c64ec8f4a88ad909971f0f5743d73a9e50578708e972b8ca28588168a45",
         intel: "4de697ca0b8cd275fa825df0841c5bb73aba83f4b4da634696f0f7fb437cf296"

  url "https://updates.signal.org/desktop/signal-desktop-beta-mac-#{arch}-#{version}.dmg"
  name "Signal Beta"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://github.com/signalapp/Signal-Desktop"
    regex(/^v?(\d+(?:\.\d+)+[._-]beta\.\d+)$/i)
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Signal Beta.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
