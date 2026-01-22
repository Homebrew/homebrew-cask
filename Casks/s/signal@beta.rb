cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.87.0-beta.1"
  sha256 arm:   "8f76a03472109577e5812247a2b6c45999c06c9ba6faeeac90a684660d845838",
         intel: "05f7586d58e1ec3d0d2440f6aa9b6e5a146414f7042069be787320b7a6f976d4"

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
