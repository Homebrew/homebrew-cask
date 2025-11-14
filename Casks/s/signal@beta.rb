cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.80.0-beta.2"
  sha256 arm:   "0a4571b15263db98c341823ae6d8cbc4457e2eb9fcc8bb2bca28e8c8b90bc84a",
         intel: "9d3fdd237a878c36465c9261c053fbaf35f334297c1b91e58c80e339395a281a"

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
