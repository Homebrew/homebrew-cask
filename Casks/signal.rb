cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.20.2"
  sha256 arm:   "19fcdd2370f4ff0efa1821cd15a4e0e1c7573a72b3a7ebe90880030dec9ff43a",
         intel: "f96198c6652c85d8528c97e4576e79e1e40e2b5c49a4b441259bb7c5760c4eef"

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
