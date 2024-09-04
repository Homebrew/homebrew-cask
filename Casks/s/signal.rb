cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.23.0"
  sha256 arm:   "57259f0350191f0f00820ec5624973d004182b6c2e6484a918dd90fb65fb2f69",
         intel: "def5f07fbeff77ea82b8375af4dd75451ed14170f57924c5e55857df0a3ba0fc"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{arch}-#{version}.dmg"
  name "Signal"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Signal.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
