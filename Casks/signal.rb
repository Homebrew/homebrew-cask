cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "5.61.0"
  sha256 arm:   "dd2578b06334d268fc16e2d7feba0248912346fa348983090443d7235215bd87",
         intel: "61215a1e9ac50c281927d9447752afe60f8435ae42f88a189fb36ee79bd3ebe4"

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
