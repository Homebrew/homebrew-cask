cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.82.0-beta.1"
  sha256 arm:   "15981c19210d447a45fc7e06cda1d5280cb9307ce9debb0de99d4b6327e2f2e7",
         intel: "90c5161c1ea240b878e9c6a2b2477f54812b836c2eea40809218ca5395cc51bc"

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
