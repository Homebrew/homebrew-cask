cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.69.0-beta.1"
  sha256 arm:   "0b3ab2c1ec96be43f4a3c8813c0080d470a879edca59dc7a8d4dc1fdd0ba090e",
         intel: "892e58d6b22b05e1e833fa339c6277c7d911905744737f76513417f15302ce10"

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
