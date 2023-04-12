cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.14.0"
  sha256 arm:   "16a7ef6b9c4942942291aacf24432dfe7ae7c9e99977a081c94e7d5e02bbe7f8",
         intel: "892cc12173561d87a1138088f4ba0006da35578e4ec833672decf3ee1bc7b301"

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
