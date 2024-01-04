cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.43.0"
  sha256 arm:   "10827d6b242a97f08c23dd8d4acde69c60bc2c034fcc7a1bcced5a8d626bcc1f",
         intel: "f032868ce11b6702fba884fe29f8ee2d62c42cc05a4789ce0584a2b8f45bf501"

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
