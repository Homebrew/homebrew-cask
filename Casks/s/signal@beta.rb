cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "8.1.0-beta.2"
  sha256 arm:   "8c2dba2057be55c0cab1765548c152819b8c3b179a33ff45f4b2b2e6cec19a28",
         intel: "b5454c9a917d000f110050d11121d39bdb43d8d0d02d63258b830ac30fc335b4"

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
