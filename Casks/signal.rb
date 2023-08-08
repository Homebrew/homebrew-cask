cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.27.1"
  sha256 arm:   "924c2f364c1ed162961dbeaee2388fe51ebcedb318a0a8dc661f52a879a12a26",
         intel: "3205be7ac35b56230e698a210cade2d0a07a63b9e740c3d6617edefd93749353"

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
