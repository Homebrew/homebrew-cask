cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "8.29.0-beta.1"
  sha256 arm:   "a47445f5fccd2b319548283e5cf0367bca442e0a2fbd89ef985ad6a7d3291ce5",
         intel: "e11cbd2f1e43f59ce676657c3eaab5126878444086fc624a6dac7d280a0c0f7c"

  url "https://updates.signal.org/desktop/signal-desktop-beta-mac-#{arch}-#{version}.zip"
  name "Signal Beta"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/beta-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :ventura

  app "Signal Beta.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
