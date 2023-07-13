cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.25.0"
  sha256 arm:   "0be695605dbb302f4a10183b496048b9474fd1205551997130227ffaafd69518",
         intel: "d23607382eac3a930f3f279f0de7725f6d88347e78d41fb34bef5ed675f179c0"

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
