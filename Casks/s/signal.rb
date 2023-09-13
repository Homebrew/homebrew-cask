cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.30.2"
  sha256 arm:   "662103264279b14bf3273400f4d3ceedbe684dd86a342564032010afc9877ef8",
         intel: "878a97cf5e1b1e8dc81e21c33e743510e0ea122b987c904623a0ab22e6bf23f2"

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
