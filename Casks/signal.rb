cask "signal" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "5.30.0"

  if Hardware::CPU.intel?
    sha256 "0c729357e0f93883ebb24bf732aa9cd30e519c2bca37a5d8516d404c869284b6"
  else
    sha256 "2c5b5ea752a60fe0534e1c7ab494dae6be6a3936b60ced945c63b8f71d75663f"
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
