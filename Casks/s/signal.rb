cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.45.0"
  sha256 arm:   "091cb6c0531c02e4400dc0f9eedc801a1feb4f62fc01c8d9d53f671d662f6f82",
         intel: "2d98837e05d20b7b0dddf56d4d2199856eb27d18b6ee3e63cf29cfbce8213f90"

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
