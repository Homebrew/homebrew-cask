cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "8.24.0"
  sha256 arm:   "c25689d73ae56665ec7e02becbc7f792e00c2bf65f8b14d73fb85f2779832ef2",
         intel: "de76c264b5a04d354a8c38dfcda4effa42304001d573ab76c3b3eaee97b3d1da"

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
