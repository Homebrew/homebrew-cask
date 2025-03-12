cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.47.0-beta.1"
  sha256 arm:   "96e28bd8b7d6f4360b5219600ba1a01c4fc7ea33991b66be2bb47c09170e4e3c",
         intel: "94f98603ba4b62ca87e7918b178d51b40b53f94ffa1425a7d86967f5a8c55a17"

  url "https://updates.signal.org/desktop/signal-desktop-beta-mac-#{arch}-#{version}.dmg"
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
