cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.3.0"
  sha256 arm:   "ec053a5172c52def15fc16e2c7df4ca6acec29c392163242094c079a15b8dcd8",
         intel: "62ae39258f7612173919390d828029dcb5fed9f9711b8882d0038fb79203999c"

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
