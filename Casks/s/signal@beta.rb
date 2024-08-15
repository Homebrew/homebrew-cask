cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.21.0-beta.1"
  sha256 arm:   "c9eb1e7e06083eb58db88bfa9852b8126038ebe7b72c64b755d12824935ba44c",
         intel: "7acc8cb5aacf4f6ef2367d46f5808445d2fc43ce42525989db6535c61b852703"

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
