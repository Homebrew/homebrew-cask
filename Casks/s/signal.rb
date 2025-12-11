cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.82.0"
  sha256 arm:   "2e9e0784165240bbe08689cfd61a2a6d50e1dead2359c36659cc8771c4c23e8e",
         intel: "662921961d0ce869847a0cbce87a2617fec1d5e7624d0b753cee0794a364300f"

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
