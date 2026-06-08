cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "8.14.0-beta.1"
  sha256 arm:   "4f1baf3c529df3cd4f71442c483a76e348574705c5fbb6a904271607acfb2d8d",
         intel: "f09ec759ea082f9ed7b5f965c7cbc13a488660b0093cea4ca1d95d5cd87a622f"

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
