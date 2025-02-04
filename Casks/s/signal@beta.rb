cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.41.0-beta.2"
  sha256 arm:   "aa9c2b917319f073715739782de79ef2fb0a9cd72a12ce1644381c2656f2b438",
         intel: "0efabdb4d3aa35c6708a53defd82f984cd6da1ae8d92c48cf70882abd985c30c"

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
