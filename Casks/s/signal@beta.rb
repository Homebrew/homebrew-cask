cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.32.0-beta.1"
  sha256 arm:   "3f78b62420e00cab7b4f16e93f8c6d62717b7657f2f9f3641adab34b1cefc205",
         intel: "cd2d0b3ae6c6a151f64c632642f5a2c2ccf107602051d4490bd27ed2d9d61d22"

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
