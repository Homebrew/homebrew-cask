cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "8.26.0-beta.1"
  sha256 arm:   "edb58cb522d721cd3362acfacb69130c8b76845c91d98ca50a6d4c6e12637f6c",
         intel: "a43669c205474588cddcc724409279d1782b55aa3da73a2dbd44193edc051e1c"

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
