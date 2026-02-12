cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.90.0-beta.1"
  sha256 arm:   "b894078b7907fec94e1b845b134057fe0f43d07928fd141823844026e822f9df",
         intel: "d0bc28b68b047bd2886eb61f80d708bd6c670633d04eccde0f9b04a18262a660"

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
