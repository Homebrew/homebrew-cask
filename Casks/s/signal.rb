cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.45.0"
  sha256 arm:   "156046e5b04f50826216e67ce0b78a6f6a92da034ef48838beda8d22baa135ed",
         intel: "33c0cf87bfda7a7a855f8bef41a4806344177d35f07a3bc7779821d0ac58e1e2"

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
