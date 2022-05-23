cask "signal" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "5.43.0"

  if Hardware::CPU.intel?
    sha256 "bc7613403848750df876b50d1d4e83ef87283662b48cc1758e0170f951e9b485"
  else
    sha256 "4d984f9d3b1757e134c98a561a98bdec5ca8fe1edb5493387d2c3f23c0ae6e4d"
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
