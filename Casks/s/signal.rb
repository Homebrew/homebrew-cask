cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.83.0"
  sha256 arm:   "a64032e5f55b676d5d7c98db4c80ef7fae83467f2bdb9880e569e83214911765",
         intel: "0a7e8ff003531887ffb1c9eedee25afac8f2a15b6fe7ea1d6cbc8e0b607ab1aa"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{arch}-#{version}.zip"
  name "Signal"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Signal.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
