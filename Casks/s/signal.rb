cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.48.0"
  sha256 arm:   "fd5c5f923a5138835447c03480e5e871b72817b48ad111a25073d4210647d419",
         intel: "3f94d0f945223c8a359a9f21935d80a1e8d18e36dbd6e413ded2781539511f1b"

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
