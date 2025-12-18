cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.84.0-beta.1"
  sha256 arm:   "c47e83bb1078f30553c561584434d18cf55cf515214cf0d24eab3031a3d49daf",
         intel: "fc59b45523ac9d3d1417a6df218edb31559c32a568fc04910b8a37050c5a43cf"

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
