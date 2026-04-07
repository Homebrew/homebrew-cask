cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "8.6.0-beta.2"
  sha256 arm:   "bddec009fca1d62448514ff6bfa97c707da7a760c9e4f3d9c00e84da7a305fd2",
         intel: "7d7e7f5df8db03078785551d1e4114fab898afd758fbb4204ab74f3da29efad1"

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
