cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.35.0"
  sha256 arm:   "06321737ff9ae1ced64e0a6cb567ab6d43a4fa4b0659e209f5d3d46f2e3e7c32",
         intel: "32f8f7171bd78b88e7da2c79ee6ce510be2ef04e59eedb4b757fdacb8d1e5ae6"

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
