cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "8.7.0-beta.2"
  sha256 arm:   "359105e797f0ddc1cdda522a9c3e574badc1ae4c8ff46b5c47374640624d3293",
         intel: "c334f7b77301fcbb7cfea762158ac4f3398f37b735f8559f0f3cc6a80d7a0cf8"

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
