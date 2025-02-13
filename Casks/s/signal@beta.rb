cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.43.0-beta.1"
  sha256 arm:   "c4262b484bff04e1c4f3d49b201c64017bf41a029b03cee6e652deff42908873",
         intel: "eaf9a735ab34fe2b57e035635cbf63193cacc933a1d66e960e261612726dd013"

  url "https://updates.signal.org/desktop/signal-desktop-beta-mac-#{arch}-#{version}.dmg"
  name "Signal Beta"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/beta-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Signal Beta.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
