cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.51.0-beta.3"
  sha256 arm:   "0ff92b8c145213f2dcee3f6c70eed0725873536ffa348831a582d5b52c5e84eb",
         intel: "704485ed576010d69146ab5c40561e416389a47b599798c51c6b7efa941758b4"

  url "https://updates.signal.org/desktop/signal-desktop-beta-mac-#{arch}-#{version}.zip"
  name "Signal Beta"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/beta-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Signal Beta.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
