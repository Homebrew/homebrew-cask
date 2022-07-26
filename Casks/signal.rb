cask "signal" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "5.51.1"

  if Hardware::CPU.intel?
    sha256 "015039368cd198945f057bc756dbeaaf597d3f318b142de1659b62ed1db83441"
  else
    sha256 "c4d4b94d8731339f326784d5e62a76c58ad3a8a280a7f2231f0cf885b8bfe57d"
  end

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
