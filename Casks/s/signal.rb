cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.57.0"
  sha256 arm:   "71416e530585b54a7af26ba9e532e46a8fc85584bf3f68efef89c31fe942daff",
         intel: "e2acaaee004ceb1ef5095428479ff4fd9f5360d22bfb5bd4c35e50f93c294019"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{arch}-#{version}.zip"
  name "Signal"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Signal.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
