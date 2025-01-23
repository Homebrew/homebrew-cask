cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.40.0-beta.1"
  sha256 arm:   "54ea0ac2dc1df82a9cc29680f302f0752d819ba3601c099e96ad1438cac03314",
         intel: "20df8479d04b06858301f6b190ce6953138d9f70ecf07a43bdcd0b8bd840a6dd"

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
