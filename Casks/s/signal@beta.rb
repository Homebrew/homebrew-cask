cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "8.22.0-beta.1"
  sha256 arm:   "ecdb8d10c098e678f6b3d04fedd8cebe883e521b05408c3cb4e4832d653be935",
         intel: "0eeda7a7b768bacfc38c95edb99f85861407854292905b285eda84616744aa9b"

  url "https://updates.signal.org/desktop/signal-desktop-beta-mac-#{arch}-#{version}.zip"
  name "Signal Beta"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/beta-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Signal Beta.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
