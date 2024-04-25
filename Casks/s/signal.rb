cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.6.0"
  sha256 arm:   "6d584ae358daa6e8a0fb94bfde2591842f631ea9ae9fac90311b50c736c78cec",
         intel: "64e6b950ce7eae151e500ca5e0ff0d62e0658b91aeac78c6ab658f3cf120c657"

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
