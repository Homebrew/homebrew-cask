cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.62.0-beta.1"
  sha256 arm:   "d9a30180bb7a889a23314fd58f72cd6529d733bab728d44420ba6d6edf2b5829",
         intel: "32e89f4ce527bbad41f961f0ad8c766528f44401660aed9c0b1de2433753a6b5"

  url "https://updates.signal.org/desktop/signal-desktop-beta-mac-#{arch}-#{version}.zip"
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
