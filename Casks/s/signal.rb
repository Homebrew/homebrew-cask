cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.42.0"
  sha256 arm:   "e39f81ccff4423029e97a1e3428deb84da27ce1a3f56ad7ea3ec4520ab55fcd5",
         intel: "7dc1f30513b293df93fd3df5733dc534cc39832d43c4e0e663c028633ab9a757"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{arch}-#{version}.dmg"
  name "Signal"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Signal.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
