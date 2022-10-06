cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "5.62.0"
  sha256 arm:   "a5161c13156f2d3efe8eb97392c63b218932e8d60d56661d7e43b758b48f291e",
         intel: "41a78c8640eed895f04f2ce66014edcc2cce445a9c20224fb9aed73dc27442bf"

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
