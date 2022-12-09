cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.0.1"
  sha256 arm:   "bcebd89df0a4dfc2e885ed49456dfed44fd3cddca78cc26f94125c56c1f71213",
         intel: "7f45ed8b6e601e6fa141f61b3cce39c006fa6790f71c21f84160e6d91ed6d246"

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
