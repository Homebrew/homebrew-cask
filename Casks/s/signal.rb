cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.15.0"
  sha256 arm:   "ae3c944bc998c9fe6467fc6292a003b278aeb3db0f0e8da88132ea6c3a592444",
         intel: "16df35368c5c0fc580037840cbe1d6a5fceb4c0a26ae19e63c05d1adcaa9d9be"

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
