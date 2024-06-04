cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.11.1"
  sha256 arm:   "b4c99b62ea0923866a88f4d6e4364ba4a1405b9c07b7ec1636ed37fa14405021",
         intel: "60175a596c88e8aa70b7441d9b831eff333329084bbb34232c1f3a94b055d156"

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
