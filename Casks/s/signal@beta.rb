cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "8.15.0-beta.1"
  sha256 arm:   "69cb6eb3a2334d0f9e1dd035897c4ae90c7805aa2b653bc27c1965d1ca8bd7cd",
         intel: "235c3e6809727dbb94cf0e8992566a86eb0eeda0ece58eb410a5958796418486"

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
