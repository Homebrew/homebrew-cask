cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.36.1"
  sha256 arm:   "25d908e104c3c40617b6d4e2c386bae47b7e97aff0810ed2b300075033cdee00",
         intel: "6c958f5c18ac0b5193a1483f166f1de6382d2c438aebfc8fa4aff8cb693abdb6"

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
