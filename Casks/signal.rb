cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.24.0"
  sha256 arm:   "0864c24a0a5117138779dd1552fbb30fac9d3faa332be6b8e4ed54597962f0d7",
         intel: "33bf618ece625aec6a3dce87c60981efc3e3b09b74b57048e1a42ae3f229cf8d"

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
