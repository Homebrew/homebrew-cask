cask "signal" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "5.49.0"

  if Hardware::CPU.intel?
    sha256 "227d5d545f1e8526b1d1c1d5b1d6120d85f0afd6ff3118843caa83bb030e86dd"
  else
    sha256 "1fe69971f5a3a6835b8604e93c1c8776a55863e9fd4cd8218b1043c450bbecb5"
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
