cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.29.0"
  sha256 arm:   "f098f7c8868aba2e55f51dcfc5c716f8100f06c2b35b76bbef71beb765c159c0",
         intel: "4a1d26ab868cb36a2b1f3dd54cd347236affc2776b0b15bcbfd271b8af6f5b56"

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
