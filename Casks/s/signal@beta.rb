cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "8.27.0-beta.3"
  sha256 arm:   "4e3f7bf257d975f4223a184fcd91be01bc9a371dec558a15ddcb11c1a2d617c4",
         intel: "22f2440f503f388f738f1697f2500b3c96e1fae84ea40f2f62c2cd2b23218104"

  url "https://updates.signal.org/desktop/signal-desktop-beta-mac-#{arch}-#{version}.zip"
  name "Signal Beta"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/beta-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Signal Beta.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
