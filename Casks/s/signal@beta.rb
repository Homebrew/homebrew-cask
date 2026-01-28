cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.88.0-beta.1"
  sha256 arm:   "640038a91b49b310660ed790f54a9434ad139ae9df47c7dd407b24075f68b28c",
         intel: "59468a88f7315e3d82c755eddcf543995ffaa7f53f568a8ff2eabf1faa0e73bc"

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
