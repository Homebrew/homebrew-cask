cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.65.0-beta.1"
  sha256 arm:   "6a4559644cab0bea05c85392d1a9a6ae31dfc3df131110547494aa003266c968",
         intel: "079e473d4acac80e3ab1402afffcff928c9cd390762f1a0542589c4e9ca6fb79"

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
