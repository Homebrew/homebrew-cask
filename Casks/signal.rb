cask "signal" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "5.45.0"

  if Hardware::CPU.intel?
    sha256 "6e233cf8291caa0cf26522d09803cd77bf13c26f410dc8891abd4b516a3a9f6d"
  else
    sha256 "e82bf70ac1b654a04503f3fca40c7272d08d3d8ae5fa34c1cc550e0406531345"
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
