cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.18.0-beta.1"
  sha256 arm:   "8bc01086f8d25832ed0dd4bf7994b7e0b412531a2729fc96fe2e367a14e5f65b",
         intel: "3c50356bfadc01b6d1fdf9a59f0272b27cd1f63345d40bf71c575fcd15639d83"

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
