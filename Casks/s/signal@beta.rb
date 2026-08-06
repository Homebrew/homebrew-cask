cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "8.23.0-beta.1"
  sha256 arm:   "b4205608fff9e75fd1778cf59b4020f7af0921c16a69262c91f10c67ceb28ec4",
         intel: "affea5b9774a9bb03b365a10f46e2f30538bc4d3afd043fca6b017ef6e9565c9"

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
