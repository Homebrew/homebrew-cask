cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "8.4.0-beta.2"
  sha256 arm:   "b2e404534422303ba8a1f2c030b9f77987ae7c86fa55c542ee2797c02ebac2b3",
         intel: "74bf87ebdcd235f0ab2d188c652e45b74147de0bd2e74ba3b3bd8208ef2587fb"

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
