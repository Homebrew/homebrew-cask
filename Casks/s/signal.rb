cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.35.0"
  sha256 arm:   "dec6c5e65116b469fea232be8fa23f4447c6b7db337b87763a48a593dab08cff",
         intel: "76d4d7a402d896e28d15fde38eab88a3db1452041f4c125ef6a54af9ffb585ce"

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
