cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.49.0-beta.1"
  sha256 arm:   "07478a8f8a9b526d7dde29f1556eadb3560e23bae495fb755e555dd46763822b",
         intel: "0025d183cd4730b107a260ab04dee7c6fa042e706929fae60556ac57ba6a1046"

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
