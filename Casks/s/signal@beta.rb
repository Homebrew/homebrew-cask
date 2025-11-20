cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.81.0-beta.1"
  sha256 arm:   "808e13ef8466ad88b160998db25bd87b7c311313dee1dc20ed507c7445edea0c",
         intel: "da2ef2c77a51d3d946b3622be4224cc051d44d2893a5aaec3a7636b61d852708"

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
