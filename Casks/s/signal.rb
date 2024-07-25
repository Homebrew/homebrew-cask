cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.17.0"
  sha256 arm:   "f8c2ee3818797a1798a21f00742ca251ba46a187117ccb9682f7ab7bf2be70f1",
         intel: "466adc005d2ccee5ca07f6698878f73a9cb23768614d89448fef990b47de436e"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{arch}-#{version}.dmg"
  name "Signal"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Signal.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
