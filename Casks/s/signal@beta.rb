cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "8.28.0-beta.2"
  sha256 arm:   "fc18921375836da1711b9b96b94a682f06a36b6587dbb03c01aaed329689480a",
         intel: "1c53a8d2bc403e2c40f5808478922d97d629a170392feac1e9c4711355dc787f"

  url "https://updates.signal.org/desktop/signal-desktop-beta-mac-#{arch}-#{version}.zip"
  name "Signal Beta"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/beta-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :ventura

  app "Signal Beta.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
