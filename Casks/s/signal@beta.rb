cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.48.0-beta.1"
  sha256 arm:   "a81dbd147bc4339555f9c55d68bbe5c2de1e5e5d2b3d2097216215a90147d726",
         intel: "0e5ffd4edb00f8420511093b3561d5af5d72ad8bb18cc71caa802e8f5fa04a0b"

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
