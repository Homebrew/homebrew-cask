cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "8.6.1"
  sha256 arm:   "decf8b21176f33d9fe4542044c676a3a587ab6845e14fdc29cab83bb0573e844",
         intel: "1ba766c8d12ae1470d4afd2b599e12948a84b9239d4ae389aaa4b2af2615273e"

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
