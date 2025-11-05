cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.79.0-beta.1"
  sha256 arm:   "4b8b37b918a0a9fdd422144a18078bde5a98d869c4ab5a7b275f9981f7d22688",
         intel: "9422692ec18a73127c4805daaf7d23aca0ecbfb9e8d50c3591f97d5c0fe81d33"

  url "https://updates.signal.org/desktop/signal-desktop-beta-mac-#{arch}-#{version}.zip"
  name "Signal Beta"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/beta-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Signal Beta.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
