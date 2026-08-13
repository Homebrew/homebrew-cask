cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "8.23.0"
  sha256 arm:   "1c5aa61d9184125a514b1479b2ac0cbb84a0da76035ac723e090429d4aa2f03f",
         intel: "34274c0655adebb2b088dd4407f833fb9a36afb80cf7fff29740d292f2528e3c"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{arch}-#{version}.zip"
  name "Signal"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Signal.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
