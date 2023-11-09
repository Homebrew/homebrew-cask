cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.38.0"
  sha256 arm:   "5c8213ed9cc2ad3b12ba949c9b2224d7d8d3dd833f61e1842e2ec092675b5288",
         intel: "4d27e79aca917fa3225329ee2670b30e56f80439e2eb672d37be0e13c598c9ca"

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
