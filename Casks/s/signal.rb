cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.5.1"
  sha256 arm:   "ab7fafe6efff9e203ea2bb6518cb0db9548968833bd8f17decd806d326861e52",
         intel: "dc614688c598412417d4440f60f5a292bfb4880a37e8a6548ec4c6911f4c41d0"

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
