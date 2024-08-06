cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.19.0"
  sha256 arm:   "a0fe5c5f2633b13fb7a38add11ce6ee1c086bd59f1cf633ca5c511c6031b0560",
         intel: "296395d891f55c76df5a251bb59277d909d8a878c5356bd459aaf07ca06c3431"

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
