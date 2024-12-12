cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.36.0"
  sha256 arm:   "f17a867d40023ae6d77a0676dbbb81deecaa938bcc130257f6b5a3f4c500ad2f",
         intel: "87f88f751f11826d3ef3dffbcd138dbdbd93956cbfbe2222a6976c37efb31e4f"

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
