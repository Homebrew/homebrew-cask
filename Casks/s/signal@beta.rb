cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "8.0.0-beta.1"
  sha256 arm:   "20dae12a896fdb8f143e7d0d2ed3e1e936ec214d76e38252ef50bdca61f9d9ec",
         intel: "2f2cd8d62b81748f1946590e4978bf1f427f6ae39f5690ad4e5b7998eab6a1ae"

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
