cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "5.63.1"
  sha256 arm:   "2bdf34c190855b13b25f0699e60a0a79daf76f8d456129a94c7e115c2d4530f2",
         intel: "0553aaeb6b4be00b5b1aba0efddbb3c7f5b6a61f8da80868ff93206f664e5147"

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
