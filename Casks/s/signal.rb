cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.85.0"
  sha256 arm:   "30b18943b9ac1c908fcfadebd3250379b34ed66ad4cc9e8ea0fd8b8905420e7c",
         intel: "88628c2c5b70e1a281aff6ee456e58aa2f6240996f78ca1bff42dd0e9c28c5d3"

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
