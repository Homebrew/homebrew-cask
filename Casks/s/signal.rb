cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.12.0"
  sha256 arm:   "7916938a4aabb3017c0c66dbe75ea8f0f1e28460f5a4f6c68f4d20924a8c4317",
         intel: "7541e8e74c41adac2ae3cbf4ec77761f2b39b2b68fa5655ebf0817dc8fb40017"

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
