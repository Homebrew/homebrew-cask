cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.22.0"
  sha256 arm:   "c2296ffeea5cc3b9ed07976731016fc34f12c3914ee3f365c6855d1bdf3e318a",
         intel: "1d806a23f099268ea663409245b19894e2adf4d7d3e8af4e56f4795ef5252191"

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
