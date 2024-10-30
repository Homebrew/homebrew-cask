cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.31.0"
  sha256 arm:   "7caec5501d33e37d9a24abff63a3c2ea781fbf0e51f5b23a3445051c815dffaf",
         intel: "b6242cce460b898378095aba3c58031c54f9c81f9c3378466ce678f38d0603c6"

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
