cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.1.1"
  sha256 arm:   "59222785aaa65949661b2875538775ca6e9ff8714d59fb82e83aefbad14d1b48",
         intel: "a96de6c64e9a2e35040526a2e21e1572be8085e3dc79df07d3306fa68215abd6"

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
