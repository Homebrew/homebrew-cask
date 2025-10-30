cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.77.0"
  sha256 arm:   "aea99c7998234caeb3d489370c797535b0ef015b6a3f8db2dc3a196075941507",
         intel: "43dba18c5879900a0a2e5700127361955891ca7b5f8ec26354d88c4d48c35dfc"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{arch}-#{version}.zip"
  name "Signal"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Signal.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
