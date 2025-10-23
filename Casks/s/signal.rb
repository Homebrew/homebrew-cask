cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.76.0"
  sha256 arm:   "7df4b79bfe6ce0004ca4eb78385879ff5e15a0a7d5027a9d38ecde9acecdc331",
         intel: "3066f44f91193aecd07b2b0e46a853e606155032e28ef5c2029b279a696b2364"

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
