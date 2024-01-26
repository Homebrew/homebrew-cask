cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.45.1"
  sha256 arm:   "663cab4e52d6e5dc4537e8529bc039f955a2e2c461a2a85133584db5bc596555",
         intel: "6b3a15fa9c31953514ae2194f699f6427498446c21f91e76b7c5d8aa4fa5164e"

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
