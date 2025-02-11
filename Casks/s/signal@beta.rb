cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.42.0-beta.2"
  sha256 arm:   "f5c191acbbd0294287304b78f8d2d968be8e8ba80cf28d28efe25bef9d53b84f",
         intel: "27458e9d90fcfe514059febaca1aa305af024f055691dbe8a05b84c702b74a20"

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
