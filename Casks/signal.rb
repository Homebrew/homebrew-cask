cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "5.63.0"
  sha256 arm:   "e855fbc6e1f8aa716f4bddce081ac6599fb037de0e1ce684226163e18c694eea",
         intel: "603440a63e23e411e750a96a9668e5cba5493656bee623add22161cd7d4e2ef9"

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
