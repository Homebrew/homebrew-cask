cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.34.0"
  sha256 arm:   "9445873f310afd49aceffde64853a5e295b76aa83685d65c62070c22cd01c80b",
         intel: "80179638689d81e2ce951543c26d792dafe90f5e0eb4a10ee5bbdf79c57f7aaa"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{arch}-#{version}.dmg"
  name "Signal"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Signal.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
