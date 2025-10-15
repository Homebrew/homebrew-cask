cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.75.0"
  sha256 arm:   "2b1c62a97f105c1ec5a8f1795829ea1b42d51f56c7b516be466f202cf71ad6d2",
         intel: "4a68be950e635bd7c0c433b743cc264b282748c44068f75dfd1fec94a522d760"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{arch}-#{version}.zip"
  name "Signal"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Signal.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
