cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.18.1"
  sha256 arm:   "7318b21f252ed05b4e42d183e47baa8947d188f4d6bf9e2eb9b9a1b7e08cdece",
         intel: "b45e2360a569adc2ff9bf16e42fdd0a41e0794b3915d62cc448f0a70309c96f7"

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
