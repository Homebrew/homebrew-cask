cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.27.0-beta.1"
  sha256 arm:   "92e6379fc219496e870cfc8316850d18df8a1d2cd61a6f652e5252cbdb06422a",
         intel: "7dc8d215e5bf56197a2ed81c5c8ceb4518a90909682f1e5cbf71b2c2ecd2bb26"

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
