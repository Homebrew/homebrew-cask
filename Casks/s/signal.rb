cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.47.0"
  sha256 arm:   "6b744ecba1a4e93342451037080bc88115920577c545df00433fb3df8d9d1fcc",
         intel: "e1c842469c82bf35ac32cbaa848755b155c06b4c172b6bace80b894563bbc102"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{arch}-#{version}.dmg"
  name "Signal"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Signal.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
