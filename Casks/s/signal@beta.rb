cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "8.17.0-beta.1"
  sha256 arm:   "9e0d41ccc9573003b668891defc3729085582ead80845580db9e3a55eacadec7",
         intel: "689246778b093c4fbec2e9dfd864cb929ef0b86d63e6c618ddcd094bacedabc7"

  url "https://updates.signal.org/desktop/signal-desktop-beta-mac-#{arch}-#{version}.zip"
  name "Signal Beta"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/beta-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Signal Beta.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
