cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.9.0"
  sha256 arm:   "4b4cdc4acb37ba9f9a8b5110ee1ea998e4012cec80545ab304cdef7f1dfd1f20",
         intel: "b4a9755c66592337c766b61a0c41c9724812289fb8532361a63c2ab03814acf0"

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
