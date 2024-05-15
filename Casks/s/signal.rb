cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.9.0"
  sha256 arm:   "8c61b452d98af083af6da85af82556255bd454463bc1f42340ee5df6e2cbb780",
         intel: "52e0805e2543e617643990a6fcf25abeef63587bb95d808d3d84e929d8762a2b"

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
