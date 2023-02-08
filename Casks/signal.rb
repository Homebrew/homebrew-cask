cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.4.1"
  sha256 arm:   "1f939f93b6228974ce180c114c2b4f1e13f2f1257dc4a91c5cde59fe5c3d90b3",
         intel: "4cb75f9a1f1edebe758bb7d39a4ba0de99336f5d2cd3cd51fd405fb38820a0b7"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{arch}-#{version}.dmg"
  name "Signal"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Signal.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
