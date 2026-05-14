cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "8.11.0-beta.1"
  sha256 arm:   "caedfd90fee549e3b7d4a8df44e2a6aa794df0796cbe8a37fcd2ca9885780fa0",
         intel: "eb5badea8feac0e3db26e998edee57e85eaa5007eb406a6b1e0c571904a44cf1"

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
