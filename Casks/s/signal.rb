cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.30.0"
  sha256 arm:   "192924a7a36dd1f7f05d3661e76d5f67ce17047d24ae4523a78438fe917d5a89",
         intel: "bc4d88e05bdd1316dcdf04a5b361dbee6fcc6ad1e3de2190fb5498e3fb4cbf58"

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
