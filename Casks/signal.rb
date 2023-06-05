cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.20.0"
  sha256 arm:   "46f1550f2f02338cd8d2d06257433cca049d5022fa75f2f79e958d07fdcd388a",
         intel: "5574c89dfd74445d84e803974d5d60a2abeeea7f4a44533946c6b76b38dc6747"

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
