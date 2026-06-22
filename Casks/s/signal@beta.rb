cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "8.16.0-beta.1"
  sha256 arm:   "57b37a63d9ff5607a7d5ab776da4f990fdbc6fa1ba7e1a9198459e62073fa676",
         intel: "3807cdf7527acdff0ef37774069e17a925a06e09c5e036dc6008bc815b9afb1e"

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
