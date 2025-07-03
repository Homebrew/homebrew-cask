cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.61.0-beta.1"
  sha256 arm:   "8442c8afe672f640a418f2f86aee29825b701e7e662fd7af6c8a81c26c52ac72",
         intel: "10b4901874628ce498ff401e9d2d42bb1bacc2c36ea5d5f6b805631aa65f9d8f"

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
