cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.73.0-beta.1"
  sha256 arm:   "aed81b64fd9184f7eeaef8770b02805ca66b40c1e53b0f369eff059d172625f3",
         intel: "d7e43c9574cc0cfbdf820b274dbfb5c87d3638ca5d1d5594374a761cd07a045b"

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
