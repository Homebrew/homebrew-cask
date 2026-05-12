cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "8.10.0-beta.1"
  sha256 arm:   "5485e43d950b6971a88531fac0f1cba0b0a3d93ed0bbb322f85bcd11eac26605",
         intel: "a327879d67d3264d165c5b364761aef53c370e6c3e6b76b9afe7df50d49f7210"

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
