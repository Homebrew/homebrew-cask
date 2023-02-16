cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.6.0"
  sha256 arm:   "5a5b40b255cd834a6b7514f2981c03f366213a527e0ff37752c4fb9d65adfd07",
         intel: "4aa785f2996df7ad84607523fadca33491219530bbabb683d057a271f8b9ac5d"

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
