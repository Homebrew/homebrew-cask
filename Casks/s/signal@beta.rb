cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.77.0-beta.1"
  sha256 arm:   "5932443a14c92d4845e391df7aecfecdd4fed51bdf4630d9f6def4f84f1b15f1",
         intel: "b2d0d5712391bd2c40c3ff142ce5b3d1ce3adb22294cc7e0661201332787001c"

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
