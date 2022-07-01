cask "signal" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "5.48.0"

  if Hardware::CPU.intel?
    sha256 "e635349cf745b77ed45b56d90268d5448b03c0ae1c87931381ff5e09fbe01774"
  else
    sha256 "d8a2c74ab93f14e1c07126772e5ddb50c2312da23c50d92c809ac80f469a212c"
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
