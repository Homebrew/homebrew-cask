cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.71.0-beta.3"
  sha256 arm:   "1214157e4d703e979e5202550e02689db1ffc596bf55f8d48666b0f164e9dcaa",
         intel: "dbca84e16ea1c474634c27f9ab90b79424d0674182149332ec6e1607be6fa358"

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
