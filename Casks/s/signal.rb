cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.24.0"
  sha256 arm:   "582176a26374c9673d64137a05fc1c1c8b2e358ad3cc0450b3540f0b94e8f401",
         intel: "cbf24478726c4fbae8a25bc354baad39a572067f3bb8d47227fc23174efa5d73"

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
