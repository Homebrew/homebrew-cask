cask "signal" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "5.32.0"

  if Hardware::CPU.intel?
    sha256 "8026701db2322f1d2997afc6381ed3f3ba67b589a27173f675db5538c54fc893"
  else
    sha256 "8cce61ed0f6bab8425887ed3d2fefc3c6daa4122e4c5bbf31aab3f3fef2d8860"
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
