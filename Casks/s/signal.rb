cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.24.1"
  sha256 arm:   "216f70ada707001d7b23f7570c6dd0ccd807f46d628eff9eefd84a262a7ca7f4",
         intel: "c7d9375a7048f2daaa12c0fd6f59f93d104f7720c012281ffa02ba967507cf41"

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
