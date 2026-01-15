cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.86.0-beta.1"
  sha256 arm:   "c938e6b8b901095e942e1815722ab479d645b78ec3bf1c8278e9e042edd179a3",
         intel: "da56b09c3386275177e8729d232a5271a1e60f10d09d88eeaf105f9304a53f7c"

  url "https://updates.signal.org/desktop/signal-desktop-beta-mac-#{arch}-#{version}.zip"
  name "Signal Beta"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/beta-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Signal Beta.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
