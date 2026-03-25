cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "8.5.0-beta.1"
  sha256 arm:   "c07819b55dd1d66cb46664eaf4538213028b97f62b70e0e2b8ca4ac6606fdf76",
         intel: "e3a839bf5059ee812d40c2e77cdcc784847eb536bc34d143c38f28e08899424e"

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
