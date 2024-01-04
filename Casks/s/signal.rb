cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.43.1"
  sha256 arm:   "8149fdc9eacc98fa5d9252e34d8825ce0506d47b9b2f31005f9b5b1f84b82e62",
         intel: "c2e3e1353bb4bc20d1ebca152461dad492c32be0dc41014f092fca862fad85c2"

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
