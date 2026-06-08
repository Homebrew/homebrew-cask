cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "8.13.0"
  sha256 arm:   "0625d97bc564f39f6aab6f7a3bfaf40fb0c807efed7321b31d392212922bd1c7",
         intel: "7d0f7dbab0aeb2ec7a24ef1cb30c2b5b3da4571067656421ad872744e0bb1fc8"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{arch}-#{version}.zip"
  name "Signal"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Signal.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
