cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.35.1"
  sha256 arm:   "4f8f3e269f675f74c8da4fd1cad545f6ffdbe841b07451efe75351e714727151",
         intel: "230bf063cb5f6abeac9b3160bed8c68389cdefdebcd9ae6df9d04b745dcdc308"

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
