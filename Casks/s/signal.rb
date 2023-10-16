cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.34.1"
  sha256 arm:   "378ee76f6b41ef362740fe5bd7f1ddde613ebd236a80f95689ead1a143336623",
         intel: "325158d9704dd31ec35667da9afa9cc5bf6832f010457fc2d16891fc284e3ad5"

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
