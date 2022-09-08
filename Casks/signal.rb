cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "5.58.0"
  sha256 arm:   "581888368bab277c6cccee2d90ac48b4f943c83b84f1b8f0fdb40e5c236f1144",
         intel: "731c0083401ba102eca0d7cd517c441ffcc314ebb3959b7bda4324bf7bb519a1"

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
