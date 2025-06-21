cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.59.0-beta.1"
  sha256 arm:   "f0bfefa55129d739dea4e39d059d9fcc6ac001bd3d8708a48920244006eaf6b7",
         intel: "58d4b319d20db87c8dd5148dc0303535c6587941b3bfc4d87888187b3c72182a"

  url "https://updates.signal.org/desktop/signal-desktop-beta-mac-#{arch}-#{version}.zip"
  name "Signal Beta"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/beta-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Signal Beta.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
