cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.17.1"
  sha256 arm:   "44aa8ca174c5febf221ce39787abd890b94ee679275bea883d293d393a429025",
         intel: "5452906546abe2856a2daa8eaf576100b353d95deb15e2b87162fc471b86e56a"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{arch}-#{version}.dmg"
  name "Signal"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Signal.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
