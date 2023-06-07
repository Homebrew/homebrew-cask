cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.20.1"
  sha256 arm:   "eceff733390ef0b8b764ab8c5817e8218dae33085c988eb41038a666a40ff972",
         intel: "b1830c8fd5dde70c0a55dc3ec3427fa3310194aa5afacaddbc70e873525ee346"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{arch}-#{version}.dmg"
  name "Signal"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Signal.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
