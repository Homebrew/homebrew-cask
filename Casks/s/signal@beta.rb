cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.47.0-beta.2"
  sha256 arm:   "c2a19a22f7915eb64db2d443f239ad60e1f3c14efadddf2823429f25ae8d21c8",
         intel: "7b58a67313b8b5ab3ad808d08fc01c43390e61c92657f5173b752a2a18b868a5"

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
