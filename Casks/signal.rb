cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.4.0"
  sha256 arm:   "f61e4a46558a88b30bfa84f69baf69ca4b72cd30dda042c1720541a82493682f",
         intel: "22a535cc18cab89e8926a249729503f37e5a9cf86b8d1fc6a00fd70363bb890b"

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
