cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.15.0"
  sha256 arm:   "60ccabd151a94ea640b48b697adc9f95252b888ec6dafd090ebcd32b3439e6f3",
         intel: "dea3c7fc3f4cd1827e44102717694da0ff5ce0ce9137a71570fc5404688cf87a"

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
