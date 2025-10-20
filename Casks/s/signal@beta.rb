cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.76.0-beta.2"
  sha256 arm:   "130dbd86f4b6c283ebac8d0677482d5ef3840eee56fb1f6621e0fd330a0855d1",
         intel: "ffbb19195e6aef31c31c8ef745fc549b6456b8fdd6cb12a8eb527389912cf5e8"

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
