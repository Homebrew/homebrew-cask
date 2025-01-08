cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.37.0"
  sha256 arm:   "bb804a2f78b54ebcd6083921be42beef0289150a9d9855eb0fc3d39c43ef0a5a",
         intel: "82d454e00362ca0a054f64714095eee4ef86852d34bdcab8f4862a1adb0413e2"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{arch}-#{version}.dmg"
  name "Signal"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Signal.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
