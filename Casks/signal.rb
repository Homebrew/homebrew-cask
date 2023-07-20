cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.26.0"
  sha256 arm:   "d173046982d80a9219d1ba1003b2672e36862415e070271587cc4c35fc35b086",
         intel: "3e986a07a401562908780a09c5413e5545553c5d618365ad5a8890723733fea2"

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
