cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.37.0-beta.1"
  sha256 arm:   "1bac52b84282a6725b1aba30a2f2de090e09a9fd6c3daca51b0ced60508e8f77",
         intel: "91b5a80e88159064999482ee110cf519d6746d076dd48fe7fe0a4ca868ce83ff"

  url "https://updates.signal.org/desktop/signal-desktop-beta-mac-#{arch}-#{version}.dmg"
  name "Signal Beta"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/beta-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Signal Beta.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
