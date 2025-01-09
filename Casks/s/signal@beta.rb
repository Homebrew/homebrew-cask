cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.38.0-beta.1"
  sha256 arm:   "a86240996797632075bfa896c2835c31bd0692926b8e3c00242af0a0e06c6231",
         intel: "36bad1f3b0097995eb9c91f29c36cd85e010829a1df6592d9015599bc21152fa"

  url "https://updates.signal.org/desktop/signal-desktop-beta-mac-#{arch}-#{version}.dmg"
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
