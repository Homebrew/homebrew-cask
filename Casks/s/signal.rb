cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.39.0"
  sha256 arm:   "86e2bfabf5e9cb9b4048f9055eff176a77bcbd57b4b8394d94b10b7796fb5ce2",
         intel: "598ded2dcebaaabeb1ee9c139f28fadfd82851e573d8993252735d560451592d"

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
