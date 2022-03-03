cask "signal" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "5.34.0"

  if Hardware::CPU.intel?
    sha256 "9bf0cab2f3edcb1eecb872f0c073239d71e2c54999c3184d83b12cc3f2d2554c"
  else
    sha256 "09036747b817e6fa3521ddf4801336640a7d7536828efdb15a2868cda10a2b58"
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
