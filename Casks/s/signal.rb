cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.61.0"
  sha256 arm:   "6f4e76f353f1bcaf84c7ce629d9910c88f1dc21801fed2620335754dd335f3d9",
         intel: "b03d83cd146aea748a0d5d0eb7e04dc57d0616dae9e110a485c8d3bfa6ed4048"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{arch}-#{version}.zip"
  name "Signal"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Signal.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
