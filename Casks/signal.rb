cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.10.1"
  sha256 arm:   "405f1da035e23780843a6c95794cdb8cf3512360e7f9c6a7f298df419e8e41f1",
         intel: "b8b1dcaab8f4e32505da9e65b4cfba75c4757755ce22982df18c846f51f5dfc0"

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
