cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.57.0-beta.2"
  sha256 arm:   "368b9551f5439c3efa170441fa434952516960c73d8f5bbda30817985901cddf",
         intel: "8c7b3d69a423bf0e878964b644688fdd2071674e3e623355b72557cbf6f4c9e9"

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
