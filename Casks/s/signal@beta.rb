cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.50.0-beta.1"
  sha256 arm:   "93c8e659253266896765fb1e22d083b4c45a0a2e381f8d0e652cfe2a43f17487",
         intel: "d2a8afad7b85d234e30dd88a5e3bcdbb0a22c203e86be21652c835f498d87fe6"

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
