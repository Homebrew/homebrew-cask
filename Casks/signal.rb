cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.19.0"
  sha256 arm:   "7f7d229c3c894cde6d858974919618119607fb01601fa6b1c2bc5c330c033a15",
         intel: "5bbd4b4ce563f0a63ce92bf3ddcb8c2aa544054cfeffaa1ace25d7f99d8af8f9"

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
