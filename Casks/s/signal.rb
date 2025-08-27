cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.68.0"
  sha256 arm:   "ff40a1bf7690ea4649a23ea97b4d55e79d4c8911c0aaaed1b2f7dd09ca3605b5",
         intel: "26ba012f878db933926b14b656e491ba7d79c3fe8044f974e7c4076594dc5325"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{arch}-#{version}.zip"
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
